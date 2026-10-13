/* A2 · Purchase — locked game sheet (#px-buy-overlay).
   Visual only: the existing close button is reused, "Buy now" forwards to the
   existing contact link, "Cancel" forwards to the existing close button. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, el = R.el, svg = R.svg, GAMES = R.GAMES;

  function gameByLabel(label) {
    var l = (label || '').trim().toLowerCase().replace(/\s+/g, '');
    if (!l) return null;
    for (var k in GAMES) {
      var t = GAMES[k].title.toLowerCase().replace(/\s+/g, '');
      if (k === l || t === l || t.indexOf(l) === 0 || l.indexOf(k) === 0) return GAMES[k];
    }
    return null;
  }
  R.gameByLabel = gameByLabel;

  R.screen(function skinBuy() {
    var ov = $('#px-buy-overlay');
    if (!ov) return;
    var box = $('.px-buy-box', ov);
    if (!box) return;
    var gEl = $('#px-buy-game', ov);
    var label = gEl ? gEl.textContent.trim() : '';
    var g = gameByLabel(label) || { tone: 't-amber', icon: 'lock', title: label || 'this tool' };
    var name = g.title;
    if (!$('.r-buy', box)) {
      var wrap = el('div', 'r-buy');
      wrap.innerHTML =
        '<div class="r-sh-handle"></div>' +
        '<div class="r-sh-head"><div class="r-sh-tt"><div class="r-sh-title r-buy-h"></div><div class="r-sh-sub">Locked game · one-time purchase</div></div><span class="r-x-slot"></span></div>' +
        '<div class="r-buy-prod"><div class="r-buy-top"><span class="r-tile r-buy-tile"></span><div style="flex:1;min-width:0"><div class="r-buy-name"></div><div class="r-buy-life">Lifetime access</div></div><span class="r-pill ac">Best value</span></div>' +
        '<div class="r-buy-sep"></div><div class="r-buy-price"><span class="r-buy-amt">$12.99</span><div><div class="r-buy-once">one-time</div><div class="r-buy-was">was $19.99</div></div><span class="r-pill green">Save 35%</span></div></div>' +
        '<div class="r-sec">What&#39;s included</div>' +
        '<ul class="r-inc"><li><span class="r-ico">' + svg('check') + '</span><span class="r-inc-1"></span></li>' +
        '<li><span class="r-ico">' + svg('check') + '</span><span>Unlimited coins, stars &amp; lives</span></li>' +
        '<li><span class="r-ico">' + svg('check') + '</span><span>Level skip and booster unlocks</span></li>' +
        '<li><span class="r-ico">' + svg('check') + '</span><span>Future updates, no extra charge</span></li></ul>' +
        '<div class="r-note"><span class="r-ico">' + svg('info') + '</span><span>Charged to your HRZ balance · one-time payment</span></div>' +
        '<button type="button" class="r-btn pri r-buy-now">Buy now · $12.99</button>' +
        '<button type="button" class="r-btn sec r-buy-cancel">Cancel</button>';
      box.insertBefore(wrap, box.firstChild);
      var x = $('.px-buy-close', box);
      if (x) { x.classList.add('r-sh-x'); x.innerHTML = svg('x'); $('.r-x-slot', wrap).replaceWith(x); }
      $('.r-buy-now', wrap).onclick = function () { var a = $('.px-buy-actions a', box); if (a) a.click(); };
      $('.r-buy-cancel', wrap).onclick = function () { var c = $('.px-buy-close', box); if (c) c.click(); };
    }
    R.setText($('.r-buy-h', box), 'Unlock ' + name);
    R.setText($('.r-buy-name', box), name + ' · Pro');
    R.setText($('.r-inc-1', box), 'All ' + name + ' save editors');
    var t = $('.r-buy-tile', box);
    var cls = 'r-tile r-buy-tile ' + (g.tone === 't-grey' ? 't-amber' : g.tone);
    if (t.className !== cls) t.className = cls;
    R.setIcon(t, g.icon);
  });
})();
