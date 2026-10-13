/* B · Township workspace — header, pipeline, features, catalog, save in
   memory and the console sheet. Visual dressing only: every app button keeps
   its own node/onclick; extra rows/buttons only forward a click() to an
   existing app control (and respect its pointer-events lock). */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setIcon = R.setIcon, setText = R.setText, EN = R.EN;
  var TONES = ['t-ac', 't-ac2', 't-green', 't-pink', 't-cyan', 't-lime', 't-amber', 't-rose', 't-teal', 't-grey', 't-black'];

  function scroller() { return document.scrollingElement || document.documentElement; }
  function toTop() { try { scroller().scrollTo({ top: 0, behavior: 'smooth' }); } catch (e) { scroller().scrollTop = 0; } }
  R.toTop = toTop;
  function tone(node, t) {
    if (!node || node.classList.contains(t)) return;
    TONES.forEach(function (x) { node.classList.remove(x); });
    node.classList.add(t);
  }
  R.tone = tone;
  /* replace the first <svg> of an app button with a reference icon (keeps the button) */
  function swapSvg(btn, name) {
    if (!btn) return;
    var old = btn.querySelector('svg');
    if (old && old.getAttribute('data-r') === name) return;
    var tmp = el('span', null, svg(name)).firstChild;
    tmp.setAttribute('data-r', name);
    if (old) btn.replaceChild(tmp, old); else btn.insertBefore(tmp, btn.firstChild);
  }
  R.swapSvg = swapSvg;
  function isConnected() { var b = $('#badge-device'); return !!(b && b.classList.contains('active')); }
  function locked(node) { try { return getComputedStyle(node).pointerEvents === 'none'; } catch (e) { return false; } }
  R.locked = locked;
  function currentGameName() {
    var px = $('#px-workspace'), fi = $('#fi-workspace');
    if (fi && fi.classList.contains('open')) return 'Family Island';
    if (px && px.classList.contains('open')) {
      var g = R.px() && R.px().game;
      return (g && R.GAMES[g]) ? R.GAMES[g].title : 'Game';
    }
    return 'Township';
  }
  R.currentGameName = currentGameName;
  function replaceIf(node, from, to) { if (node && EN() && node.textContent.trim() === from) node.textContent = to; }
  R.replaceIf = replaceIf;

  /* ── B1 header ───────────────────────────────────────────────────────── */
  function skinHeader() {
    var hd = $('#app-root > header');
    if (!hd) return;
    var brand = $('.brand', hd);
    if (brand && !$('.r-brand-tile', brand)) {
      var s = brand.querySelector('svg');
      var t = el('span', 'r-brand-tile');
      brand.insertBefore(t, brand.firstChild);
      if (s) t.appendChild(s);
    }
    swapSvg($('#btn-backup'), 'dbBackup');
    swapSvg($('#btn-switch-game'), 'layers');
    swapSvg($('#btn-new-account'), 'userPlus');
    var row = $('.r-hrow2', hd);
    if (!row) { row = el('div', 'r-hrow2'); hd.appendChild(row); }
    var bd = $('#badge-device');
    if (bd && bd.parentElement !== row) row.insertBefore(bd, row.firstChild);
    if (bd && !$('.r-conn', bd)) bd.insertBefore(el('span', 'r-conn', 'Connected'), $('#lbl-device', bd));
    if (bd && !bd.__rClick) { bd.__rClick = 1; bd.addEventListener('click', function () { R.openConsole(); }); }
    var gp = $('.r-gpill', row);
    if (!gp) {
      gp = el('button', 'r-gpill', svg('gamepad') + '<span></span>');
      gp.type = 'button';
      gp.onclick = function () { var b = $('#btn-switch-game'); if (b) b.click(); };
      row.appendChild(gp);
    }
    setText($('span', gp), currentGameName());
  }

  /* ── B1 pipeline ─────────────────────────────────────────────────────── */
  function stepPill(card, kind, text) {
    if (!card) return;
    var st = $('.step-title', card);
    if (!st) return;
    var p = $('.r-stat', st);
    if (!p) { p = el('span', 'r-pill r-stat'); st.appendChild(p); }
    var cls = 'r-pill r-stat ' + kind;
    if (p.className !== cls) p.className = cls;
    setText(p, text);
  }
  function skinPipeline() {
    var side = $('#twn-workspace .sidebar');
    if (!side) return;
    var ph = side.querySelector(':scope > .panel-header');
    var inner = ph && ph.nextElementSibling;
    if (ph) ph.classList.add('r-pipe-head');
    if (inner) {
      inner.classList.add('r-side-in');
      if (inner.children[0]) inner.children[0].classList.add('r-pipe-body');
      if (inner.children[1]) inner.children[1].classList.add('r-feats');
    }
    var on = isConnected();
    if (ph) {
      var cnt = $('.r-pipe-count', ph);
      if (!cnt) { cnt = el('span', 'r-pipe-count'); ph.appendChild(cnt); }
      setText(cnt, (on ? 1 : 0) + ' / 2 done');
    }
    stepPill($('#s1'), 'ok', on ? 'Done' : 'Ready');
    var b4 = $('#b4'), s4 = $('#s4');
    var pend = !!(b4 && !b4.disabled);
    if (s4 && s4.classList.contains('r-pending') !== pend) s4.classList.toggle('r-pending', pend);
    stepPill(s4, pend ? 'pend' : 'idle', pend ? 'Pending' : 'Locked');
    if (EN()) {
      setText($('#s1 .step-desc'), 'Connect to the emulator and pull the current save.');
      setText($('#s4 .step-desc'), 'Apply pending changes and push the save back to the game.');
    }
  }

  /* ── B1 features ─────────────────────────────────────────────────────── */
  var FEAT = { 's_pull': ['copy', 't-cyan'], 's3': ['shieldCheck', 't-green'], 'barn-step-card': ['warehouse', 't-teal'], 'passe-step-card': ['ticket', 't-amber'] };
  var BADGE = [
    ['terrenos-badge', 'map', 't-lime', 'Unlock'],
    ['desban-badge', 'copy', 't-ac', 'Clone'],
    ['barn-items-badge', 'package', 't-teal', 'Open'],
    ['passe-activate-badge', 'crown', 't-amber', null]
  ];
  function skinFeatures() {
    var feats = $('#twn-workspace .r-feats');
    if (!feats) return;
    if (!feats.querySelector(':scope > .r-sec')) feats.insertBefore(el('div', 'r-sec', 'Features'), feats.firstChild);
    Object.keys(FEAT).forEach(function (id) {
      var c = document.getElementById(id);
      if (!c) return;
      var t = c.querySelector(':scope > .r-tile');
      if (!t) { t = el('span', 'r-tile'); c.insertBefore(t, c.firstChild); }
      tone(t, FEAT[id][1]);
      setIcon(t, FEAT[id][0]);
    });
    if (EN()) {
      setText($('#s_pull .step-desc'), 'Select the save folder to clone the app.');
      setText($('#s3 .step-desc'), 'Recover a banned account by cloning.');
      replaceIf($('#b3'), 'Recover Account', 'Recover');
    }
    BADGE.forEach(function (b) {
      var badge = document.getElementById(b[0]);
      var row = document.getElementById('r-frow-' + b[0]);
      if (!badge) { if (row) row.remove(); return; }
      if (!row) {
        row = el('div', 'r-frow');
        row.id = 'r-frow-' + b[0];
        row.innerHTML = '<span class="r-tile ' + b[2] + '">' + R.iconImage(b[1]) + '</span><div class="r-ft"></div><div class="r-fd"></div><button type="button" class="r-fbtn"></button>';
        row.querySelector('.r-fbtn').onclick = function (e) {
          e.stopPropagation();
          if (locked(badge)) return;          /* the app has this control locked */
          badge.click();
        };
        feats.appendChild(row);
      }
      var tt = badge.querySelector('.bt-title'), dd = badge.querySelector('.bt-desc');
      setText(row.querySelector('.r-ft'), tt ? tt.textContent.trim() : '');
      setText(row.querySelector('.r-fd'), dd ? dd.textContent.trim() : '');
      var isPass = b[0] === 'passe-activate-badge';
      var off = locked(badge) || (!isPass && badge.classList.contains('locked'));
      if (row.classList.contains('r-off') !== off) row.classList.toggle('r-off', off);
      var on = isPass && !badge.classList.contains('locked');
      if (row.classList.contains('r-on') !== on) row.classList.toggle('r-on', on);
      setText(row.querySelector('.r-fbtn'), isPass ? (on ? 'Active' : 'Activate') : b[3]);
    });
  }

  /* ── B2 catalog ──────────────────────────────────────────────────────── */
  var CAT = {
    'regata-box': ['flag', 't-rose'], 'todas-cartas-box': ['inbox', 't-ac'],
    'profile-box': ['user', 't-ac'], 'avatar-box': ['smile', 't-cyan'],
    'skins-box': ['party', 't-teal'], 'vskins-box': ['palette', 't-amber'],
    'achiev-box': ['award', 't-lime'], 'stickers-box': ['sticker', 't-pink'],
    'acadind-box': ['grad', 't-ac'], 'altqtd-box': ['packagePlus', 't-cyan'],
    'zoo-cards-box': ['paw', 't-lime'], 'market-slots-box': ['boxes', 't-ac2']
  };
  function filterCatalog(root, q) {
    q = (q || '').trim().toLowerCase();
    $$('.ap-card', root).forEach(function (c) {
      var t = ($('.ap-card-title', c) || {}).textContent || '';
      c.classList.toggle('r-hide', !!q && t.toLowerCase().indexOf(q) === -1);
    });
    $$('.ap-section', root).forEach(function (s) {
      var any = $$('.ap-card', s).some(function (c) { return !c.classList.contains('r-hide'); });
      s.classList.toggle('r-hide', !any);
    });
  }
  R.filterCatalog = filterCatalog;
  R.catalogHead = function (ap, title) {
    var h = ap.querySelector(':scope > .r-subhead');
    if (h) return h;
    h = el('div', 'r-subhead');
    h.innerHTML = '<button type="button" class="r-iconbtn r-up">' + svg('arrowUp') + '</button>' +
      '<div class="r-sh-tt"><div class="r-st"></div><div class="r-ss"></div></div>' +
      '<button type="button" class="r-iconbtn r-srch">' + svg('search') + '</button>';
    ap.insertBefore(h, ap.firstChild);
    var s = el('div', 'r-search', svg('search') + '<input type="text" placeholder="Search tools" autocomplete="off">');
    ap.insertBefore(s, h.nextSibling);
    var inp = s.querySelector('input');
    h.querySelector('.r-up').onclick = toTop;
    h.querySelector('.r-srch').onclick = function () {
      ap.classList.toggle('r-searching');
      if (ap.classList.contains('r-searching')) inp.focus(); else { inp.value = ''; filterCatalog(ap, ''); }
    };
    inp.addEventListener('input', function () { filterCatalog(ap, inp.value); });
    return h;
  };
  function skinCatalog() {
    var ap = $('#twn-workspace .action-panel');
    if (!ap) return;
    var h = R.catalogHead(ap);
    var cards = $$('.ap-card', ap);
    setText($('.r-st', h), 'Township');
    setText($('.r-ss', h), 'Feature catalog · ' + cards.length + ' tools');
    var first = $('.ap-section', ap);
    if (first && !first.classList.contains('r-rose')) first.classList.add('r-rose');
    cards.forEach(function (c) {
      var m = CAT[c.id];
      if (m) { tone(c, m[1]); setIcon($('.ap-card-icon', c), m[0]); }
      $$('.ap-btn', c).forEach(function (b) { replaceIf(b, 'Usar', 'Use'); });
    });
  }

  /* ── B3 save in memory ───────────────────────────────────────────────── */
  var FIELD = {
    nam: ['user', 't-ac'], tca: ['gem', 't-green'], coi: ['coins', 't-ac'], lvl: ['trendUp', 't-cyan'],
    m3l: ['layers', 't-pink'], win: ['award', 't-lime'], liv: ['heart', 't-rose'], hlp: ['users', 't-cyan'],
    crd: ['cards', 't-amber'], reg: ['flag', 't-rose'], dat: ['calendar', 't-ac2'], min: ['hammer', 't-amber']
  };
  function markDirty() {
    var n = 0;
    $$('#editor-grid .input-group').forEach(function (g) {
      var i = g.querySelector('input');
      var cur = g.querySelector('.val');
      var v = i ? i.value.trim() : '';
      var d = !!(v && v !== (cur ? cur.textContent.trim() : ''));
      if (g.classList.contains('r-dirty') !== d) g.classList.toggle('r-dirty', d);
      if (d) n++;
    });
    var e = $('.r-acct .r-ed');
    if (e) setText(e, n + ' edited');
    var p = $('.r-acct .r-pill');
    if (p) { var v = n ? 'visible' : 'hidden'; if (p.style.visibility !== v) p.style.visibility = v; }
  }
  function saveAll() {
    /* presses each dirty field's own Apply button, one after another */
    $$('#editor-grid .input-group.r-dirty .input-row button').forEach(function (b, i) {
      setTimeout(function () { if (!b.disabled) b.click(); }, i * 350);
    });
  }
  function hhmm() { var d = new Date(); return ('0' + d.getHours()).slice(-2) + ':' + ('0' + d.getMinutes()).slice(-2); }
  R.hhmm = hhmm;
  function skinMemory() {
    var grid = $('#editor-grid');
    if (!grid) return;
    var panel = grid.closest('.glass-panel');
    var wrap = panel && $('.editor-wrapper', panel);
    if (!wrap) return;
    panel.classList.add('r-mem');
    if (!panel.querySelector(':scope > .r-subhead')) {
      var h = el('div', 'r-subhead');
      h.innerHTML = '<button type="button" class="r-iconbtn r-up">' + svg('arrowLeft') + '</button>' +
        '<div class="r-sh-tt"><div class="r-st">Save in Memory</div><div class="r-ss">Township · edits apply to the loaded save</div></div>' +
        '<button type="button" class="r-iconbtn r-clr">' + svg('rotateCcw') + '</button>';
      panel.insertBefore(h, panel.firstChild);
      h.querySelector('.r-up').onclick = toTop;
      /* reset = put every input back to its current ("now") value; nothing is applied */
      h.querySelector('.r-clr').onclick = function () {
        $$('#editor-grid .input-group').forEach(function (g) {
          var i = g.querySelector('input'), c = g.querySelector('.val');
          if (i && c) i.value = c.textContent.trim();
        });
        markDirty();
      };
      wrap.insertBefore(el('div', 'r-acct', '<span class="r-av"></span><div style="min-width:0;flex:1"><div class="r-an"></div><div class="r-al"></div></div><span class="r-pill">' + svg('pencil') + '<span class="r-ed"></span></span>'), wrap.firstChild);
      var foot = el('div', 'r-memfoot', '<div class="r-hint">' + svg('info') + '<span>Changes stay in memory until you Send to Game</span></div><button type="button" class="r-btn pri r-saveall">Save in Memory</button>');
      wrap.appendChild(foot);
      foot.querySelector('.r-saveall').onclick = saveAll;
    }
    $$('.input-group', grid).forEach(function (g) {
      var inp = g.querySelector('input');
      var hd = g.querySelector('.input-header');
      if (!inp || !hd) return;
      var f = FIELD[inp.id.replace('inp-', '')] || ['sparkles', 't-ac'];
      var t = hd.querySelector(':scope > .r-tile');
      if (!t) { t = el('span', 'r-tile'); hd.insertBefore(t, hd.firstChild); }
      tone(t, f[1]);
      setIcon(t, f[0]);
      replaceIf(g.querySelector('.input-row button'), 'OK', 'Apply');
      if (!inp.__rDirty) { inp.__rDirty = 1; inp.addEventListener('input', markDirty); }
    });
    markDirty();
    var lockEl = $('#editor-lock');
    var isLocked = !!(lockEl && !lockEl.classList.contains('hidden'));
    if (isLocked) R.loadedAt = null; else if (!R.loadedAt) R.loadedAt = hhmm();
    var acct = $('.r-acct', panel), foot2 = $('.r-memfoot', panel);
    var disp = isLocked ? 'none' : '';
    if (acct.style.display !== disp) acct.style.display = disp;
    if (foot2.style.display !== disp) foot2.style.display = disp;
    var nm = (($('#cur-nam') || {}).textContent || '').trim();
    var lv = (($('#cur-lvl') || {}).textContent || '').trim();
    setText($('.r-av', acct), (nm || '?').charAt(0).toUpperCase());
    setText($('.r-an', acct), nm || '—');
    setText($('.r-al', acct), [lv ? 'Level ' + lv : '', R.loadedAt ? 'save loaded ' + R.loadedAt : ''].filter(Boolean).join(' · '));
  }

  /* ── B4 console sheet ────────────────────────────────────────────────── */
  var lastLines = -1;
  R.openConsole = function () {
    lastLines = -1;
    var tp = $('.terminal-panel.r-console');
    if (tp && tp.scrollIntoView) tp.scrollIntoView({ behavior: 'smooth', block: 'start' });
    R.run && R.run();
  };
  R.closeConsole = function () {};
  function skinConsole() {
    var tp = $('.terminal-panel');
    if (!tp) return;
    var term = $('#term', tp);
    if (!term) return;
    if (!$('.r-conshead', tp)) {
      tp.classList.add('r-console');
      var head = el('div', 'r-conshead',
        '<div class="r-sh-handle"></div>' +
        '<div class="r-sh-head"><div class="r-sh-tt"><div class="r-sh-title">Console</div><div class="r-sh-sub r-csub"></div></div><button type="button" class="r-sh-x r-cx">' + svg('x') + '</button></div>' +
        '<div class="r-cchips"><button type="button" class="r-chip on" data-f="">All</button>' +
        '<button type="button" class="r-chip" data-f="err">Errors · <span class="r-ne">0</span></button>' +
        '<button type="button" class="r-chip" data-f="apply">Apply · <span class="r-na">0</span></button>' +
        '<button type="button" class="r-follow on">' + svg('follow') + '<span>Follow</span></button></div>');
      tp.insertBefore(head, term);
      var foot = el('div', 'r-cfoot', '<button type="button" class="r-btn sec r-copy">' + svg('copy') + 'Copy log</button><button type="button" class="r-btn danger r-clear">' + svg('trash') + 'Clear</button>');
      tp.appendChild(foot);
      $('.r-cx', head).onclick = R.closeConsole;
      $$('.r-chip', head).forEach(function (c) {
        c.onclick = function () {
          $$('.r-chip', head).forEach(function (x) { x.classList.toggle('on', x === c); });
          tp.classList.toggle('r-f-err', c.getAttribute('data-f') === 'err');
          tp.classList.toggle('r-f-apply', c.getAttribute('data-f') === 'apply');
        };
      });
      $('.r-follow', head).onclick = function () { this.classList.toggle('on'); lastLines = -1; R.run && R.run(); };
      $('.r-copy', foot).onclick = function () {
        var txt = $$('.log-line', term).map(function (l) { return l.innerText.replace(/\s+/g, ' ').trim(); }).join('\n');
        try { navigator.clipboard.writeText(txt); } catch (e) {}
        try { showToast('Log copied', 'success'); } catch (e) {}
      };
      $('.r-clear', foot).onclick = function () { $$('.log-line', term).forEach(function (l) { l.remove(); }); };
    }
    if (!tp.classList.contains('r-console')) tp.classList.add('r-console');
    var lines = $$('.log-line', term), ne = 0, na = 0;
    lines.forEach(function (l) {
      if (!l.__rLv) {
        var s = l.querySelector('span:not(.log-time)');
        var c = s ? (s.className.match(/log-([a-z])/) || [])[1] : 'i';
        if (c !== 'e' && c !== 'w' && /\bappl(y|ied|ying)\b|→/i.test(l.textContent)) c = 'a';
        l.__rLv = c || 'i';
        l.classList.add('r-lv-' + l.__rLv);
      }
      if (l.__rLv === 'e') ne++;
      if (l.__rLv === 'a') na++;
    });
    setText($('.r-ne', tp), String(ne));
    setText($('.r-na', tp), String(na));
    var first = lines[0] && $('.log-time', lines[0]);
    setText($('.r-csub', tp), lines.length + (lines.length === 1 ? ' line' : ' lines') + (first ? ' · session started ' + first.textContent.trim().slice(0, 5) : ''));
    if ($('.r-follow.on', tp) && lines.length !== lastLines) {
      term.scrollTop = term.scrollHeight;
    }
    lastLines = lines.length;
  }

  R.screen(skinHeader);
  R.screen(skinPipeline);
  R.screen(skinFeatures);
  R.screen(skinCatalog);
  R.screen(skinMemory);
  R.screen(skinConsole);
})();
