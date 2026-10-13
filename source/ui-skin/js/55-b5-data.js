/* B5 · Data Mode page — code card around the app's own textarea/buttons. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, EN = R.EN;
  var M = R.SHEET_META;

  function dataMode(ov, box) {
    var ta = $('#data-mode-paste-area', box);
    if (!ta) return;
    var sec = ta.closest('.ed-section');
    var row = $('.ed-paste-row', box);
    var load = $('#data-mode-btn-load', box), paste = $('#data-mode-btn-paste', box);
    var clear = row ? $$('button', row).filter(function (b) { return /Clear/i.test(b.getAttribute('onclick') || ''); })[0] : null;
    var status = $('#data-mode-status', box);
    var card = sec && sec.querySelector(':scope > .r-code');
    if (sec && !card) {
      card = el('div', 'r-code',
        '<div class="r-code-h"><span class="r-ico">' + svg('fileCode') + '</span><span class="r-code-n">data code</span><span class="r-code-c"></span></div>' +
        '<div class="r-code-b"></div><div class="r-code-f"></div>');
      sec.insertBefore(card, ta);
      $('.r-code-b', card).appendChild(ta);
      var f = $('.r-code-f', card);
      if (paste) { paste.classList.add('r-chipbtn', 'r-raw'); R.swapSvg(paste, 'clipboard'); f.appendChild(paste); }
      if (clear) { clear.classList.add('r-chipbtn', 'r-danger', 'r-raw'); clear.insertBefore(el('span', null, svg('x')).firstChild, clear.firstChild); f.appendChild(clear); }
      var st = el('span', 'r-code-st');
      f.appendChild(st);
      if (load && row) { load.classList.add('r-bigbtn'); R.swapSvg(load, 'smartphone'); sec.insertBefore(load, row.nextSibling); }
      ta.addEventListener('input', function () { R.run && R.run(); });
    }
    var n = ta.value.length;
    setText($('.r-code-c', card), n.toLocaleString('en-US') + ' chars · UTF-8');
    var st2 = $('.r-code-st', card);
    var ok = !!ta.value.trim();
    setText(st2, ok ? 'Ready' : 'Empty');
    var cls = 'r-code-st ' + (ok ? 'ok' : '');
    if (st2.className !== cls) st2.className = cls;
    if (EN()) { var t = $('.ed-section-title span', sec); if (t) setText(t, 'Paste code'); }
  }
  if (M['data-mode-overlay']) M['data-mode-overlay'].fn = dataMode;
})();
