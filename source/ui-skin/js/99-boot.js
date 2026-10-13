/* Boot — no app function is wrapped or patched. A MutationObserver
   re-applies the visual layer whenever the app changes the DOM. */
(function () {
  'use strict';
  var R = window.HRZREF;
  var mo = null, pending = 0, last = 0, seen = {};
  function runAll() {
    if (mo) mo.disconnect();
    var list = R.extra || [];
    for (var i = 0; i < list.length; i++) {
      try { list[i](); } catch (e) { var k = String(e); if (!seen[k]) { seen[k] = 1; console.warn('hrz skin', e); } }
    }
    last = Date.now();
    observe();
  }
  function schedule() {
    if (pending) return;
    var wait = Math.max(16, 90 - (Date.now() - last));
    pending = setTimeout(function () { pending = 0; runAll(); }, wait);
  }
  function observe() {
    if (!mo) mo = new MutationObserver(schedule);
    mo.observe(document.documentElement, { subtree: true, childList: true, attributes: true, attributeFilter: ['class', 'lang'] });
  }
  R.run = runAll;
  if (window.__hrzMO) { try { window.__hrzMO.disconnect(); } catch (e) {} }
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', runAll);
  else runAll();
  window.__hrzMO = mo;
})();
