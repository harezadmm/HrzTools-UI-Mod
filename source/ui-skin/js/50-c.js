/* C · Township tool sheets — per-modal dressing on top of 40-sheets.js */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, setIcon = R.setIcon, EN = R.EN;
  var M = R.SHEET_META;

  function radio(row, on) {
    var r = row.querySelector(':scope > .r-radio');
    if (!r) { r = el('span', 'r-radio'); row.appendChild(r); }
    var want = on ? 'circleCheck' : '';
    if ((r.getAttribute('data-r-ico') || '') !== want) { r.innerHTML = on ? svg('circleCheck') : ''; r.setAttribute('data-r-ico', want); }
  }
  R.radio = radio;
  function tileFirst(row, icon, tone) {
    var t = row.querySelector(':scope > .r-tile');
    if (!t) { t = el('span', 'r-tile ' + (tone || 't-ac')); row.insertBefore(t, row.firstChild); }
    else if (tone && !t.classList.contains(tone)) { R.tone(t, tone); }
    setIcon(t, icon);
    return t;
  }
  R.tileFirst = tileFirst;
  function infoBlock(host, before, icon, tone, title, descNode) {
    var b = host.querySelector(':scope > .r-info');
    if (!b) {
      b = el('div', 'r-info', '<span class="r-tile ' + tone + '">' + svg(icon) + '</span><div style="min-width:0;flex:1"><div class="r-it"></div><div class="r-id"></div></div>');
      host.insertBefore(b, before || host.firstChild);
      if (descNode) $('.r-id', b).appendChild(descNode);
    }
    setText($('.r-it', b), title);
    return b;
  }
  R.infoBlock = infoBlock;
  function secLabel(host, after, cls, text) {
    var s = host.querySelector(':scope > .' + cls);
    if (!s) { s = el('div', 'r-sec ' + cls); host.insertBefore(s, after ? after.nextSibling : host.firstChild); }
    setText(s, text);
    return s;
  }
  R.secLabel = secLabel;

  var footer = R.footer, clickOf = R.clickOf, closeOf = R.closeOf;
  function fmt(n) { n = String(n).replace(/[^\d]/g, ''); return n ? n.replace(/\B(?=(\d{3})+(?!\d))/g, ' ') : ''; }
  R.fmt = fmt;

  /* C2 · Barn Capacity */
  function barn(ov, box) {
    var body = $('.barn-modal-body', box), wrap = $('.barn-custom-wrap', box);
    if (!body || !wrap) return;
    var inp = $('#barn-custom-input', wrap), disp = $('#barn-custom-cap-display', wrap), apply = $('.barn-custom-btn', wrap);
    var hero = box.querySelector(':scope > .r-hero');
    if (!hero) {
      hero = el('div', 'r-hero', '<span class="r-tile t-ac">' + svg('warehouse') + '</span><div style="flex:1;min-width:0"><div class="r-hl">New capacity</div><div class="r-hn"></div><div class="r-hs"></div></div><span class="r-pill ok">Live</span>');
      box.insertBefore(hero, body);
      box.insertBefore(el('div', 'r-sec r-qo', 'Quick options'), body);
      var lab = el('div', 'r-lab', 'Custom value');
      wrap.insertBefore(lab, wrap.firstChild);
      if (inp && !inp.parentElement.classList.contains('r-inwrap')) {
        var iw = el('div', 'r-inwrap', svg('hash'));
        inp.parentElement.insertBefore(iw, inp);
        iw.appendChild(inp);
      }
      wrap.appendChild(el('div', 'r-after', '<span>After apply</span><span class="r-af"></span>'));
      wrap.appendChild(el('div', 'r-hint2', svg('info') + '<span>Tapping a quick option applies it right away.</span>'));
    }
    $$('.barn-option', body).forEach(function (o) {
      var v = $('.barn-option-val', o);
      if (v && !v.getAttribute('data-r-raw')) { v.setAttribute('data-r-raw', v.textContent); v.textContent = fmt(v.textContent); }
    });
    var upg = inp && inp.value ? fmt(inp.value) : '';
    var cap = disp ? fmt(disp.textContent) : '';
    setText($('.r-hn', hero), cap || '—');
    setText($('.r-hs', hero), upg ? 'slots · from ' + upg + ' upgrades' : 'slots · enter upgrades below');
    $('.r-af', wrap).innerHTML = '<b>' + (upg || '0') + '</b> upg <span class="r-arr">→</span> <b class="r-hi">' + (cap || '—') + '</b>';
    footer(box, [
      { text: 'Cancel', cls: 'sec', run: closeOf(ov) },
      { text: 'Apply', cls: 'pri', run: clickOf(apply) }
    ]);
  }
  if (M['barn-modal-overlay']) M['barn-modal-overlay'].fn = barn;

  /* C1 · App Clone */
  function appClone(ov) {
    var sec = $('#ed-folders-section', ov) || $('.ed-section', ov);
    if (!sec) return;
    var tt = $('.ed-section-title span', sec);
    infoBlock(sec, sec.firstChild, 'folderSearch', 't-ac', (EN() ? 'Save folders on device' : (tt ? tt.textContent : '')), $('.ed-paste-hint', sec));
    var scan = $('#ed-btn-scan', sec);
    if (scan) R.swapSvg(scan, 'refresh');
    if (EN() && scan) { var sp = $('span', scan); if (sp && sp.textContent.trim() === 'Scan Folders') sp.textContent = 'Scan folders'; }
    var list = $('.ed-folder-list', sec);
    var rows = list ? $$('.ed-folder-row', list) : [];
    var lab = secLabel(sec, scan, 'r-found', 'Found folders · ' + rows.length);
    lab.style.display = rows.length ? '' : 'none';
    rows.forEach(function (r) {
      var sel = r.classList.contains('selected');
      tileFirst(r, sel ? 'folderCheck' : 'folder', sel ? 't-ac2' : 't-ac');
      radio(r, sel);
    });
  }
  ['ed-overlay', 'px-ed-overlay', 'fi-ed-overlay'].forEach(function (id) { if (M[id]) M[id].fn = appClone; });

  /* item name → icon/tone (visual only) */
  var ITEM_ICONS = [
    [/wheat|trigo/i, 'wheat', 't-lime'], [/corn|milho/i, 'sprout', 't-green'], [/carrot|cenoura/i, 'carrot', 't-amber'],
    [/cane|cana|sugar|a[cç]ucar/i, 'leaf', 't-teal'], [/tomat/i, 'cherry', 't-pink'], [/berry|fruit|fruta|cherry|cereja|apple|ma[cç]a/i, 'cherry', 't-rose'],
    [/milk|leite|egg|ovo|cheese|queijo/i, 'droplets', 't-cyan'], [/brick|tijolo|slab|laje|glass|vidro|nail|prego|plank|t[aá]bua/i, 'brick', 't-amber'],
    [/fish|peixe/i, 'fish', 't-cyan'], [/flower|flor/i, 'flower', 't-pink'], [/cotton|algod|wool|l[aã]/i, 'feather', 't-ac2']
  ];
  function itemIcon(name) {
    for (var i = 0; i < ITEM_ICONS.length; i++) if (ITEM_ICONS[i][0].test(name)) return ITEM_ICONS[i];
    return [null, 'package', 't-ac'];
  }
  R.itemIcon = itemIcon;
  /* − value + around an existing numeric input; changes are typed into the
     input and announced with an 'input' event, exactly like the keyboard */
  function stepper(inp, step) {
    if (!inp || (inp.parentElement && inp.parentElement.classList.contains('r-stepper'))) return;
    var w = el('span', 'r-stepper');
    inp.parentElement.insertBefore(w, inp);
    var minus = el('button', 'r-raw', svg('minus')), plus = el('button', 'r-raw', svg('plus'));
    minus.type = plus.type = 'button';
    w.appendChild(minus); w.appendChild(inp); w.appendChild(plus);
    function bump(d) {
      var v = parseInt(inp.value, 10); if (isNaN(v)) v = 0;
      v = Math.max(0, v + d * (step || 1));
      inp.value = String(v);
      inp.dispatchEvent(new Event('input', { bubbles: true }));
      inp.dispatchEvent(new Event('change', { bubbles: true }));
    }
    minus.onclick = function (e) { e.stopPropagation(); bump(-1); };
    plus.onclick = function (e) { e.stopPropagation(); bump(1); };
  }
  R.stepper = stepper;

  /* C3 · Barn Items */
  function barnItems(ov, box) {
    $$('.barn-item-row', box).forEach(function (row) {
      var name = $('.barn-item-name', row), inp = $('.barn-item-input', row);
      if (!name) return;
      if (!row.querySelector(':scope > .r-tile')) {
        var ic = itemIcon(name.textContent + ' ' + (name.getAttribute('title') || ''));
        row.insertBefore(el('span', 'r-tile ' + ic[2], svg(ic[1])), row.firstChild);
        var tx = el('div', 'r-bi-txt');
        row.insertBefore(tx, name);
        tx.appendChild(name);
        tx.appendChild(el('div', 'r-bi-sub', 'Stored · ' + (name.getAttribute('title') || '')));
      }
      stepper(inp, 1);
    });
    var save = $('#barn-items-save-btn', box);
    footer(box, [
      { text: 'Reset', cls: 'sec', run: function () {
          $$('.barn-item-input', box).forEach(function (i) {
            if (i.value !== i.getAttribute('data-orig')) { i.value = i.getAttribute('data-orig'); i.dispatchEvent(new Event('input', { bubbles: true })); }
          });
        } },
      { text: save ? (save.textContent.trim() || 'Save') : 'Save', cls: 'pri', run: clickOf(save), disabled: function () { return !!(save && save.disabled); } }
    ]);
  }
  if (M['barn-items-modal-overlay']) { M['barn-items-modal-overlay'].fn = barnItems; M['barn-items-modal-overlay'].noFoot = 1; }

  /* C4 · Golden Pass Hub + pass type */
  function passHub(ov, box) {
    var dv = $('.tc-modal-divider-text', box);
    if (EN()) setText(dv, 'Edit target');
    var cards = $$('.tc-modal-card', box);
    cards.forEach(function (c) {
      var isPass = /PasseHubEditor/.test(c.getAttribute('onclick') || '');
      var icn = $('.tc-modal-card-icon', c);
      if (icn) { R.tone(icn, isPass ? 't-amber' : 't-ac'); setIcon(icn, isPass ? 'ticket' : 'train'); }
      if (EN()) setText($('.tc-modal-card-title span', c), isPass ? 'Golden Pass' : 'Trains');
      c.style.order = isPass ? '1' : '2';
      if (isPass && !c.classList.contains('r-gold')) c.classList.add('r-gold');
      var body = $('.tc-modal-card-body', c);
      if (body && !$('.r-tbtn', body)) body.appendChild(el('span', 'r-tbtn', 'Open'));
    });
  }
  if (M['passe-hub-modal-overlay']) M['passe-hub-modal-overlay'].fn = passHub;
  function passType(ov, box) {
    if (EN()) setText($('.tc-modal-divider-text', box), 'Pass type');
    $$('.tc-modal-card', box).forEach(function (c) {
      var icn = $('.tc-modal-card-icon', c);
      var west = /velhooeste/.test(c.id);
      if (icn) { R.tone(icn, 't-amber'); setIcon(icn, west ? 'ticket' : 'crown'); }
    });
  }
  if (M['passe-tipo-modal-overlay']) M['passe-tipo-modal-overlay'].fn = passType;

  /* C5 · Boxes & Slots router + market / factory slot editors */
  function boxes(ov, box) {
    var body = $('.ed-body', box);
    if (!body) return;
    infoBlock(body, body.firstChild, 'boxes', 't-cyan', 'Building slots',
      el('span', null, 'Slots are written per building type. Changes take effect after Save and a game restart.'));
    if (EN()) setText($('.tc-modal-divider-text', body), 'Slots');
    $$('.tc-modal-card', body).forEach(function (c) {
      var mk = /MarketSlots/.test(c.getAttribute('onclick') || '');
      var icn = $('.tc-modal-card-icon', c);
      if (icn) { R.tone(icn, mk ? 't-cyan' : 't-ac'); setIcon(icn, mk ? 'store' : 'factory'); }
    });
  }
  if (M['caixas-modal-overlay']) M['caixas-modal-overlay'].fn = boxes;
  function slotRows(ov, box) {
    $$('.acad2-row', box).forEach(function (row) {
      var fields = $('.acad2-fields', row);
      var inp = fields && $('input', fields);
      var lab = $('.acad2-label', row);
      if (!lab) return;
      if (!row.querySelector('.r-bi-sub')) {
        var tx = el('div', 'r-bi-txt');
        row.insertBefore(tx, lab);
        tx.appendChild(lab);
        tx.appendChild(el('div', 'r-bi-sub'));
      }
      var cur = fields ? $$('.acad2-field', fields)[1] : null;
      var curV = cur ? cur.textContent.replace(/[^\d—]/g, '') : '';
      var mx = inp ? inp.getAttribute('max') : '';
      setText($('.r-bi-sub', row), 'Current ' + (curV || '—') + (mx ? ' · max ' + mx : ''));
      if (inp && !inp.disabled) stepper(inp, 1);
    });
  }
  if (M['fslots-modal-overlay']) M['fslots-modal-overlay'].fn = slotRows;
  if (M['acadind-modal-overlay']) M['acadind-modal-overlay'].fn = slotRows;

  /* C6 · Quantities */
  function quantities(ov, box) {
    ov.style.setProperty('--sheet-dot', 'var(--r-pink)');
    var bulk = $('#altqtd-bulk-wrap', box), mode = $('#altqtd-mode-wrap', box);
    var body = $('.ed-body', box);
    if (bulk && body && !box.querySelector('.r-qtop')) {
      var top = el('div', 'r-qtop');
      top.appendChild(el('div', 'r-sec', 'Item quantity'));
      top.appendChild(el('div', 'r-lab', 'Amount for all items'));
      box.insertBefore(top, body);
      top.appendChild(bulk);
      var chips = el('div', 'r-qchips');
      [['100', 100], ['1 000', 1000], ['9 999', 9999], ['99 999', 99999]].forEach(function (c) {
        var b = el('button', 'r-qchip', c[0]); b.type = 'button';
        b.onclick = function (e) {
          e.stopPropagation();
          var i = $('#altqtd-bulk-val', box); if (!i) return;
          i.value = String(c[1]); i.dispatchEvent(new Event('input', { bubbles: true }));
        };
        chips.appendChild(b);
      });
      top.appendChild(chips);
      if (mode) {
        top.appendChild(el('div', 'r-sec r-labmodes', 'Modes'));
        top.appendChild(mode);
      }
    }
    var bi = $('#altqtd-bulk-val', box);
    if (bi && !bi.parentElement.classList.contains('r-inwrap')) {
      var iw = el('div', 'r-inwrap', svg('hash'));
      bi.parentElement.insertBefore(iw, bi);
      iw.appendChild(bi);
    }
    $$('.r-qchip', box).forEach(function (c) {
      var on = bi && bi.value && c.textContent.replace(/\s/g, '') === bi.value;
      if (c.classList.contains('on') !== !!on) c.classList.toggle('on', !!on);
    });
    if (EN()) {
      var bl = $('.altqtd-bulk-lbl', box); if (bl && bl.textContent.trim() === 'Todos') bl.textContent = 'All';
      var bb = bulk && $('button', bulk); if (bb && bb.textContent.trim() === 'Aplicar') bb.textContent = 'Fill all';
    }
    if (mode && !mode.querySelector('.r-mdesc')) {
      var ml = $('.altqtd-mode-lbl', mode);
      if (ml) { var w = el('span', 'r-mtxt'); ml.parentElement.insertBefore(w, ml); w.appendChild(ml); w.appendChild(el('span', 'r-mdesc', 'Type the amount to send instead of the total')); }
      mode.insertBefore(el('span', 'r-tile t-pink', svg('gift')), mode.firstChild);
    }
    $$('.altqtd-row', box).forEach(function (r) {
      var ic = $('.altqtd-ico', r);
      if (ic && !ic.classList.contains('r-tile')) ic.classList.add('r-tile', 't-ac');
    });
  }
  if (M['altqtd-modal-overlay']) M['altqtd-modal-overlay'].fn = quantities;
})();
