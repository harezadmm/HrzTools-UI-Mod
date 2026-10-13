/* D · Unlock pages/sheets (Advantages, Profile, Avatars, Zoo, Stickers,
   Achievements, Decorations & Skins). Selection state always lives in the
   app's own checkboxes; footer buttons forward to the app's All/None/Apply. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, setIcon = R.setIcon, EN = R.EN;
  var M = R.SHEET_META;

  function btnByText(scope, re) {
    return $$('button, a', scope).filter(function (b) { return re.test((b.textContent || '').trim()); })[0] || null;
  }
  function selectedCount(scope) {
    var all = $$('input[type="checkbox"]', scope);
    return [all.filter(function (c) { return c.checked; }).length, all.length];
  }
  function applyBtn(box) { return $('.mdl-hdr-actions button', box); }

  /* "N / M selected" + "Select all" pill, built over an existing ctrl bar */
  function countBar(ctrl, body, word) {
    if (!ctrl) return;
    var bar = ctrl.querySelector(':scope > .r-cnt');
    if (!bar) {
      bar = el('div', 'r-cnt', '<span class="r-cn"></span><button type="button" class="r-selall">' + svg('checkCheck') + '<span>Select all</span></button>');
      ctrl.insertBefore(bar, ctrl.firstChild);
      var allBtn = btnByText(ctrl, /^(all|todos|tudo)$/i);
      bar.querySelector('.r-selall').onclick = function (e) { e.stopPropagation(); if (allBtn) allBtn.click(); };
    }
    var c = selectedCount(body);
    var html = '<b>' + c[0] + '</b> / ' + c[1] + ' <i>' + word + '</i>';
    var cn = $('.r-cn', bar);
    if (cn.getAttribute('data-r') !== html) { cn.innerHTML = html; cn.setAttribute('data-r', html); }
    return c;
  }
  R.countBar = countBar;

  function listFooter(ov, box, primaryText, secText) {
    var ctrl = $('.stk-modal-ctrl, .ai-ctrl', box) || box;
    var none = btnByText(ctrl, /^(none|nenhum|nada)$/i);
    var ap = applyBtn(box);
    R.footer(box, [
      { text: secText || 'Clear', cls: 'sec', run: R.clickOf(none) },
      { text: primaryText || (ap ? ap.textContent.trim() : 'Apply'), cls: 'pri', run: R.clickOf(ap), disabled: function () { return !!(ap && ap.disabled); } }
    ]);
    var right = $('.r-shead .r-right', box);
    if (right && !right.__r) { right.__r = 1; right.onclick = function (e) { e.stopPropagation(); if (none) none.click(); }; }
  }

  /* ── D1 · Advantages ─────────────────────────────────────────────────── */
  var VANT_ICON = [
    [/Buildings/i, 'hammer', 't-amber'], [/Harvest/i, 'wheat', 't-lime'], [/Farms/i, 'paw', 't-amber'],
    [/Storage/i, 'warehouse', 't-ac'], [/Air/i, 'plane', 't-cyan'], [/Train/i, 'train', 't-green'],
    [/Market/i, 'store', 't-cyan'], [/Coins/i, 'coins', 't-amber'], [/Clan/i, 'users', 't-pink'], [/Mine/i, 'zap', 't-ac']
  ];
  function advantages(ov, box) {
    var body = $('.additem-modal-body', box), ctrl = $('.ai-ctrl', box);
    countBar(ctrl, body, 'enabled');
    $$('.ai-card', box).forEach(function (card) {
      var top = $('.ai-card-top', card), lab = top && $('label', top);
      if (!lab || top.querySelector('.r-tile')) return;
      var id = lab.getAttribute('title') || '';
      var m = VANT_ICON.filter(function (v) { return v[0].test(id); })[0] || [null, 'sparkles', 't-ac'];
      top.insertBefore(el('span', 'r-tile sm ' + m[2], svg(m[1])), lab);
    });
    listFooter(ov, box, EN() ? 'Apply changes' : null, 'Reset');
  }
  if (M['vantagens-modal-overlay']) { M['vantagens-modal-overlay'].fn = advantages; M['vantagens-modal-overlay'].noFoot = 1; }

  /* ── D2 · Unlock Profile ─────────────────────────────────────────────── */
  var CAT_ICON = { badges: ['badgeCheck', 't-green'], frames: ['image', 't-ac'], titles: ['type', 't-amber'], styles: ['monitorImg', 't-cyan'] };
  function profile(ov, box) {
    var body = $('.additem-modal-body', box);
    if (!body) return;
    $$('.up-cat-label', body).forEach(function (lab) {
      var grid = lab.nextElementSibling;
      var key = grid && grid.id ? grid.id.replace('up-grid-', '') : '';
      var ic = CAT_ICON[key] || ['image', 't-ac'];
      if (!lab.querySelector(':scope > .r-tile')) lab.insertBefore(el('span', 'r-tile sm ' + ic[1], svg(ic[0])), lab.firstChild);
      var cnt = lab.querySelector(':scope > .r-catn');
      if (!cnt) { cnt = el('span', 'r-catn'); lab.insertBefore(cnt, lab.querySelector('.up-cat-actions')); }
      var c = grid ? selectedCount(grid) : [0, 0];
      setText(cnt, c[0] + ' / ' + c[1]);
    });
    var note = box.querySelector(':scope > .r-note');
    if (!note) {
      note = el('div', 'r-note r-pnote', '<span class="r-ico">' + svg('info') + '</span><span class="r-nt"></span>');
      box.appendChild(note);
    }
    var n = selectedCount(body)[0];
    setText($('.r-nt', note), n + ' items will be written to your profile on the next Send to Game.');
  }
  if (M['unlock-profile-modal-overlay']) M['unlock-profile-modal-overlay'].fn = profile;

  /* ── D3 · Avatars / D5 · Stickers / D4 · Zoo / skins / merge decos ──── */
  function searchBox(box, before, ph, scope) {
    var s = box.querySelector(':scope > .r-search');
    if (s) return s;
    s = el('div', 'r-search', svg('search') + '<input type="text" placeholder="' + ph + '" autocomplete="off">');
    box.insertBefore(s, before);
    var inp = s.querySelector('input');
    inp.addEventListener('input', function () {
      var q = inp.value.trim().toLowerCase();
      $$('.stk-card', scope()).forEach(function (c) {
        var t = (($('.up-label', c) || {}).textContent || '').toLowerCase();
        c.classList.toggle('r-hide', !!q && t.indexOf(q) === -1);
      });
    });
    return s;
  }
  function stkList(word, primary) {
    return function (ov, box) {
      var ctrl = $('.stk-modal-ctrl', box), body = $('.stk-modal-body', box);
      var c = countBar(ctrl, body, word) || [0, 0];
      listFooter(ov, box, typeof primary === 'function' ? primary(c) : primary, 'Clear');
      return c;
    };
  }
  function avatars(ov, box) {
    var body = $('.stk-modal-body', box), ctrl = $('.stk-modal-ctrl', box);
    if (body) searchBox(box, ctrl, 'Search avatars', function () { return body; });
    var c = stkList('selected', function (c) { return 'Unlock selected (' + c[0] + ')'; })(ov, box);
    var sub = $('.r-shead .r-ss', box);
    if (sub) { setText(sub, c[1] + ' in catalog'); sub.style.display = ''; }
  }
  if (M['ava-modal-overlay']) { M['ava-modal-overlay'].fn = avatars; M['ava-modal-overlay'].noFoot = 1; }
  function stickers(ov, box) {
    var c = stkList('selected', function (c) { return 'Unlock ' + c[0] + ' stickers'; })(ov, box);
    var sub = $('.r-shead .r-ss', box);
    if (sub) { setText(sub, c[1] + ' stickers'); sub.style.display = ''; }
  }
  if (M['stk-modal-overlay']) { M['stk-modal-overlay'].fn = stickers; M['stk-modal-overlay'].noFoot = 1; }
  function zoo(ov, box) {
    var c = stkList('albums', EN() ? 'Complete selected' : null)(ov, box);
    var sub = $('.r-shead .r-ss', box);
    if (sub) { setText(sub, c[1] + ' albums'); sub.style.display = ''; }
    var body = $('.stk-modal-body', box);
    $$('.stk-card', body).forEach(function (card) {
      if (card.querySelector('.r-bar')) return;
      card.appendChild(el('span', 'r-bar', '<i></i>'));
    });
    var hero = box.querySelector(':scope > .r-zhero');
    if (!hero && body) {
      hero = el('div', 'r-zhero', '<span class="r-tile t-lime">' + svg('paw') + '</span><div style="flex:1;min-width:0"><div class="r-zt">Collection progress</div><div class="r-zs"></div></div><span class="r-zp"></span><div class="r-zbar"><i></i></div>');
      box.insertBefore(hero, $('.stk-modal-ctrl', box) || body);
    }
    if (hero) {
      var pct = c[1] ? Math.round(c[0] / c[1] * 100) : 0;
      setText($('.r-zs', hero), c[0] + ' of ' + c[1] + ' albums selected');
      setText($('.r-zp', hero), pct + '%');
      var bar = $('.r-zbar i', hero), w = pct + '%';
      if (bar.style.width !== w) bar.style.width = w;
    }
  }
  if (M['zoo-modal-overlay']) { M['zoo-modal-overlay'].fn = zoo; M['zoo-modal-overlay'].noFoot = 1; }
  /* D7 · Decorations & Skins: All-decorations / Merge / Skins share one page
     with a segmented control; each tab opens the app's own modal. */
  var DECO_TABS = [
    ['alldec-modal-overlay', 'Decorations', 'cmdOpenAllDecoModal'],
    ['expdec-modal-overlay', 'Expedition', 'cmdOpenExpDecoModal'],
    ['skins-modal-overlay', 'Skins', 'cmdOpenSkinsModal']
  ];
  function decoSeg(ov, box, before) {
    var seg = box.querySelector(':scope > .r-seg');
    if (!seg) {
      seg = el('div', 'r-seg r-dseg');
      DECO_TABS.forEach(function (t) {
        var b = el('button', t[0] === ov.id ? 'active' : '', t[1]);
        b.type = 'button';
        b.onclick = function (e) {
          e.stopPropagation();
          if (t[0] === ov.id) return;
          R.closeOf(ov)();
          setTimeout(function () { try { if (typeof window[t[2]] === 'function') window[t[2]](); } catch (x) {} }, 30);
        };
        seg.appendChild(b);
      });
      box.insertBefore(seg, before);
    }
  }
  DECO_TABS.forEach(function (t) {
    var id = t[0];
    if (!M[id]) return;
    M[id].noFoot = 1;
    M[id].page = 1;
    M[id].t = 'Decorations & Skins';
    M[id].right = 'sliders';
    M[id].fn = function (ov, box) {
      var body = $('.stk-modal-body', box), ctrl = $('.stk-modal-ctrl', box);
      var first = $('.r-shead', box) ? $('.r-shead', box).nextSibling : box.firstChild;
      decoSeg(ov, box, first);
      if (body && id !== 'alldec-modal-overlay') searchBox(box, ctrl, 'Search ' + t[1].toLowerCase(), function () { return body; });
      var ads = $('.alldec-search', box);
      if (ads && ctrl && ads.nextElementSibling !== ctrl) {
        box.insertBefore(ads, ctrl);
        ads.classList.add('r-search');
        ads.insertBefore(el('span', 'r-ico', svg('search')), ads.firstChild);
      }
      var c = stkList('unlocked', 'Apply')(ov, box);
      var sub = $('.r-shead .r-ss', box);
      if (sub) { setText(sub, 'Township · ' + c[1] + ' items'); sub.style.display = ''; }
      var sel = $('.r-cnt .r-selall span', box);
      if (sel) setText(sel, 'Select all');
    };
  });

  /* ── D6 · Achievements (router → hero + rows) ────────────────────────── */
  function achievements(ov, box) {
    var body = $('.ed-body', box);
    if (!body) return;
    var all = $('.tc-modal-card.tc-all', body);
    var hero = box.querySelector(':scope > .r-ahero');
    if (!hero) {
      hero = el('div', 'r-ahero', '<div class="r-ah"><span class="r-tile t-lime">' + svg('award') + '</span><div style="flex:1;min-width:0"><div class="r-at">Unlock everything</div><div class="r-as"></div></div><span class="r-pill ok">Ready</span></div><button type="button" class="r-btn pri r-aall">Unlock all</button>');
      box.insertBefore(hero, body);
      $('.r-aall', hero).onclick = function (e) { e.stopPropagation(); R.clickOf(all)(); };
    }
    var d = all ? $('.tc-modal-card-desc', all) : null;
    setText($('.r-as', hero), d ? d.textContent.trim() : '');
    if (EN()) setText($('.tc-modal-divider-text', body), 'Categories');
    var ICON = { 'tc-mine': ['landmark', 't-ac'], 'tc-expfin': ['compass', 't-cyan'], 'tc-all': ['award', 't-lime'] };
    $$('.tc-modal-card', body).forEach(function (c) {
      var k = Object.keys(ICON).filter(function (x) { return c.classList.contains(x); })[0];
      var icn = $('.tc-modal-card-icon', c);
      if (k && icn) { R.tone(icn, ICON[k][1]); setIcon(icn, ICON[k][0]); }
    });
  }
  if (M['achiev-modal-overlay']) M['achiev-modal-overlay'].fn = achievements;

  /* ── Decorations router (All / Merge) stays a sheet ───────────────────── */
  function decoRouter(ov, box) {
    var body = $('.ed-body', box);
    if (!body) return;
    if (EN()) setText($('.tc-modal-divider-text', body), 'Decorations');
    var ic = [['sparkles', 't-teal'], ['trees', 't-green']];
    $$('.tc-modal-card', body).forEach(function (c, i) {
      var icn = $('.tc-modal-card-icon', c);
      if (icn && ic[i]) { R.tone(icn, ic[i][1]); setIcon(icn, ic[i][0]); }
    });
  }
  if (M['deco-modal-overlay']) { M['deco-modal-overlay'].fn = decoRouter; M['deco-modal-overlay'].page = 0; M['deco-modal-overlay'].s = 'Unlock town decorations'; }
})();
