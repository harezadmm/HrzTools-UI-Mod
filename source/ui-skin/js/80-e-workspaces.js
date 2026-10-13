/* E1 / E2 / E3 · Workspaces of the other games (#px-workspace, #fi-workspace).
   Same dressing approach as Township: wrap/tag existing nodes, never replace. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, setIcon = R.setIcon, EN = R.EN;

  function gameMode() {
    var px = $('#px-workspace'), fi = $('#fi-workspace');
    if (fi && fi.classList.contains('open')) return 'fi';
    if (px && px.classList.contains('open')) return 'px';
    return '';
  }
  R.gameMode = gameMode;

  function gameHead() {
    var root = $('#app-root');
    if (!root) return;
    var mode = gameMode();
    var on = !!mode;
    if (document.body.classList.contains('r-mode-game') !== on) document.body.classList.toggle('r-mode-game', on);
    var h = root.querySelector(':scope > .r-gamehead');
    if (!h) {
      h = el('div', 'r-gamehead r-subhead');
      h.innerHTML = '<button type="button" class="r-iconbtn r-gback">' + svg('arrowLeft') + '</button>' +
        '<div class="r-sh-tt"><div class="r-st"></div><div class="r-ss"></div></div>' +
        '<button type="button" class="r-iconbtn r-gcons">' + svg('terminal') + '</button>';
      root.insertBefore(h, root.firstChild);
      h.querySelector('.r-gback').onclick = function () { var b = $('#btn-switch-game'); if (b) b.click(); };
      h.querySelector('.r-gcons').onclick = function () { R.openConsole(); };
    }
    if (!on) return;
    var name = R.currentGameName();
    var g = R.px() && R.px().game;
    var kind = mode === 'fi' ? 'Workspace' : (g === 'simcity' ? 'City workspace' : 'Match-3 workspace');
    setText($('.r-st', h), name);
    setText($('.r-ss', h), kind);
  }

  function pipeline(ws, prefix) {
    var side = $('.sidebar', ws);
    if (!side) return;
    var ph = side.querySelector(':scope > .panel-header');
    if (ph) ph.classList.add('r-pipe-head');
    var s1 = $('#' + prefix + '-s1', ws), s2 = $('#' + prefix + '-s2', ws);
    if (!s1 || !s2) return;
    var host = s1.parentElement;
    if (host.classList.contains('r-pipe-body')) host = host.parentElement;   /* already wrapped */
    host.classList.add('r-side-in');
    var body = host.querySelector(':scope > .r-pipe-body');
    if (!body) {
      body = el('div', 'r-pipe-body r-pipe-compact');
      host.insertBefore(body, s1);
      body.appendChild(s1);
      body.appendChild(s2);
    }
    var b2 = $('#' + prefix + '-b2', ws);
    var conn = !!(b2 && !b2.disabled);
    if (ph) {
      if (EN()) { var sp = $('span', ph); if (sp && sp.textContent.trim() !== 'Pipeline') sp.textContent = 'Pipeline'; }
      var p = ph.querySelector('.r-pill');
      if (!p) { p = el('span', 'r-pill'); ph.appendChild(p); }
      var cls = 'r-pill ' + (conn ? 'ok' : 'idle');
      if (p.className !== cls) p.className = cls;
      setText(p, conn ? 'Emulator connected' : 'Not connected');
    }
    /* actions list = everything after the pipeline in the sidebar */
    var feats = host;
    if (!feats.querySelector(':scope > .r-sec')) feats.insertBefore(el('div', 'r-sec r-acts', 'Actions'), body.nextSibling);
    feats.classList.add('r-feats-x');
    var ICONS = [[/clone/i, 'copy', 't-cyan'], [/pass/i, 'ticket', 't-amber'], [/epic/i, 'crown', 't-pink'], [/card|carta|envio/i, 'inbox', 't-ac'],
      [/rainbow|event|light/i, 'sparkles', 't-ac2'], [/aquar/i, 'fish', 't-cyan'], [/decor/i, 'party', 't-teal'], [/tempo|time/i, 'timer', 't-lime'],
      [/custo|cost/i, 'coins', 't-amber'], [/regi/i, 'map', 't-lime']];
    $$('.step-card', host).forEach(function (c) {
      if (c === s1 || c === s2) return;
      if (c.querySelector(':scope > .r-tile')) return;
      var tt = c.querySelector('.step-title span'), dd = c.querySelector('.step-desc');
      var key = (c.id || '') + ' ' + (tt ? tt.textContent : '') + ' ' + (dd ? dd.textContent : '');
      var m = ICONS.filter(function (x) { return x[0].test(key); })[0] || [null, 'zap', 't-ac'];
      c.insertBefore(el('span', 'r-tile ' + m[2], R.iconImage(m[1])), c.firstChild);
    });
  }

  R.screen(function skinGameWorkspaces() {
    gameHead();
    var px = $('#px-workspace'), fi = $('#fi-workspace');
    if (px && px.classList.contains('open')) pipeline(px, 'px');
    if (fi && fi.classList.contains('open')) pipeline(fi, 'fi');
    [px, fi].forEach(function (ws) {
      if (!ws || !ws.classList.contains('open')) return;
      $$('.ap-card .ap-btn', ws).forEach(function (b) { R.replaceIf(b, 'Usar', 'Use'); });
      $$('.ap-section-label', ws).forEach(function (l) {
        var t = Array.prototype.filter.call(l.childNodes, function (n) { return n.nodeType === 3 && n.textContent.trim(); })[0];
        if (t && EN() && /Itens do perfil/i.test(t.textContent)) t.textContent = 'Items';
      });
    });
  });
})();
