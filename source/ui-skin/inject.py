#!/usr/bin/env python3
"""Build the UI bundle: pristine index HTML + reference skin -> index_decrypted.html.

- Base is decomp/assets/index_decrypted.pre-refskin.html (created once from the
  current index_decrypted.html; never modified afterwards).
- The previous visual layer <style id="hrztools-ui-system"> is removed (it is a
  pure-CSS layer; the reference skin replaces it).
- css/*.css and js/*.js are concatenated in name order and appended as
  <style id="hrz-ref-skin"> + <script id="hrz-ref-skin-js">.
No JavaScript of the app is touched.
"""
import glob, hashlib, os, re, shutil, sys

HERE = os.path.dirname(os.path.abspath(__file__))
ASSETS = os.path.join(HERE, '..', 'decomp', 'assets')
CUR = os.path.join(ASSETS, 'index_decrypted.html')
BASE = os.path.join(ASSETS, 'index_decrypted.pre-refskin.html')

if not os.path.exists(BASE):
    shutil.copyfile(CUR, BASE)
    print('backup created:', BASE)

html = open(BASE, encoding='utf-8').read()

# 1) drop the old visual layer
m = re.search(r'<style id="hrztools-ui-system">.*?</style>', html, re.S)
if not m:
    sys.exit('hrztools-ui-system block not found')
html = html[:m.start()] + '<!-- hrztools-ui-system replaced by hrz-ref-skin -->' + html[m.end():]

# 2) skin bundle
css = '\n'.join(open(f, encoding='utf-8').read() for f in sorted(glob.glob(os.path.join(HERE, 'css', '*.css'))))
js = '\n'.join(open(f, encoding='utf-8').read() for f in sorted(glob.glob(os.path.join(HERE, 'js', '*.js'))))
for bad, part in (('</style', css), ('</script', js)):
    if bad in part.lower():
        sys.exit('bundle contains ' + bad)
block = ('\n<style id="hrz-ref-skin">\n' + css + '\n</style>\n'
         '<script id="hrz-ref-skin-js">\n' + js + '\n</script>\n')
i = html.rfind('</html>')
html = (html[:i] + block + html[i:]) if i != -1 else (html + block)

# 3) sanity: app logic untouched (every <script> except ours identical)
def scripts(s):
    return [x for x in re.findall(r'<script[^>]*>.*?</script>', s, re.S) if 'hrz-ref-skin-js' not in x]
orig = open(BASE, encoding='utf-8').read()
a, b = scripts(orig), scripts(html)
same = len(a) == len(b) and all(x == y for x, y in zip(a, b))
print('app <script> blocks unchanged:', same, f'({len(a)} blocks)')
if not same:
    sys.exit('app scripts changed — aborting')

open(CUR, 'w', encoding='utf-8', newline='').write(html)
print('written', CUR, len(html.encode('utf-8')), 'bytes; sha256', hashlib.sha256(html.encode('utf-8')).hexdigest()[:16])
