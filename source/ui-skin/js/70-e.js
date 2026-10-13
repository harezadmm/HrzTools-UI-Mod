/* E · misc sheets (Desban, Regatta league, Cards, Trains, Fetch City,
   Backup / Restore, Reset device dialog). Visual dressing only. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, setIcon = R.setIcon, EN = R.EN;
  var M = R.SHEET_META;

  /* E4 · Desban */
  function desban(ov, box) {
    var body = $('.desban-modal-body', box);
    if (!body) return;
    if (!body.querySelector(':scope > .r-note')) {
      body.insertBefore(el('div', 'r-note r-green-note', '<span class="r-ico">' + svg('shieldCheck') + '</span><span>Loads a clean donor save and keeps your progress. Use a friend or an exported XML file as the donor.</span>'), body.firstChild);
    }
    $$('.clone-tabs', body).forEach(function (t) { t.classList.add('r-seg'); });
    $$('.desban-status', body).forEach(function (st) {
      if (!st.previousElementSibling || !st.previousElementSibling.classList.contains('r-stico')) {
        st.parentElement.insertBefore(el('span', 'r-stico'), st);
      }
      var ico = st.previousElementSibling;
      var done = /ok|success|done|green/.test(st.className) || /✔|loaded|carregad|success/i.test(st.textContent);
      var want = done ? 'circleCheck' : 'circleDashed';
      if (ico.getAttribute('data-r-ico') !== want) { ico.innerHTML = svg(want); ico.setAttribute('data-r-ico', want); }
      ico.classList.toggle('on', done);
      ico.style.display = st.textContent.trim() ? '' : 'none';
    });
    var fin = $('#dsb-btn-completo', box), step = $('#dsb-step-3', box);
    R.footer(box, [
      { text: 'Cancel', cls: 'sec', run: R.closeOf(ov) },
      { text: EN() ? 'Apply & recover' : (fin ? fin.textContent.trim() : 'Apply'), cls: 'pri', run: R.clickOf(fin),
        disabled: function () { return !fin || fin.disabled || (step && step.classList.contains('locked')); } }
    ]);
  }
  ['desban-modal-overlay'].forEach(function (id) { if (M[id]) { M[id].fn = desban; M[id].noFoot = 1; } });

  /* E5 · Regatta league */
  var LEAGUE = { madeira: ['sailboat', 't-grey'], cobre: ['medal', 't-amber'], aco: ['medal', 't-grey'], prata: ['medal', 't-ac2'], dourada: ['medal', 't-amber'], infinitos: ['infinity', 't-ac'] };
  function regatta(ov, box) {
    var cur = window._regataQtd;
    $$('.tc-modal-card', box).forEach(function (c) {
      var oc = c.getAttribute('onclick') || '';
      var m = oc.match(/regata_liga_([a-z]+)'\s*,\s*(\d+)/);
      var icn = $('.tc-modal-card-icon', c);
      if (m && icn) {
        var L = LEAGUE[m[1]] || ['medal', 't-ac'];
        R.tone(icn, L[1]);
        if (!icn.querySelector('svg[data-r]')) { var s = el('span', null, svg(L[0])).firstChild; s.setAttribute('data-r', L[0]); icn.appendChild(s); }
      }
      var sel = !!(m && cur && String(cur) === m[2]);
      c.classList.toggle('r-sel', sel);
      R.radio(c, sel);
    });
    if (EN()) setText($('.tc-modal-divider-text', box), 'League');
  }
  if (M['regata-liga-modal-overlay']) M['regata-liga-modal-overlay'].fn = regatta;

  /* E6 · Cards router → three tiles */
  function cards(ov, box) {
    var IC = [['sparkles', 't-ac2'], ['inbox', 't-ac'], ['send', 't-cyan']];
    if (EN()) setText($('.tc-modal-divider-text', box), 'Card operations');
    $$('.tc-modal-card', box).forEach(function (c, i) {
      var icn = $('.tc-modal-card-icon', c);
      if (icn && IC[i]) { R.tone(icn, IC[i][1]); setIcon(icn, IC[i][0]); }
    });
  }
  if (M['todas-cartas-modal-overlay']) M['todas-cartas-modal-overlay'].fn = cards;

  /* E9 · Backup / Restore */
  function backup(ov, box) {
    var save = $('#bk-opt-save', box), use = $('#bk-opt-use', box);
    if (save && !save.querySelector('.r-tile')) save.insertBefore(el('span', 'r-tile t-ac', svg('database')), save.firstChild);
    if (use && !use.querySelector('.r-tile')) use.insertBefore(el('span', 'r-tile t-cyan', svg('fileArchive')), use.firstChild);
    $$('#bk-list > *', box).forEach(function (row) {
      if (!row.querySelector(':scope > .r-tile') && !row.classList.contains('bk-empty')) row.insertBefore(el('span', 'r-tile sm t-cyan', svg('fileArchive')), row.firstChild);
    });
  }
  if (M['bk-overlay']) M['bk-overlay'].fn = backup;

  /* E10 · Reset device → centred confirm dialog */
  function resetDialog(ov, box) {
    var body = $('.ed-body', box);
    if (!body) return;
    var top = box.querySelector(':scope > .r-dlg');
    if (!top) {
      top = el('div', 'r-dlg', '<span class="r-dlg-ico">' + svg('alert') + '</span><div class="r-dlg-t"></div><div class="r-dlg-d"></div>');
      box.insertBefore(top, body);
      var go = $('#btn-reset-confirm', box);
      var acts = el('div', 'r-dlg-acts');
      var b1 = el('button', 'r-btn danger', '<span></span>'); b1.type = 'button';
      var b2 = el('button', 'r-btn sec', '<span>Keep device</span>'); b2.type = 'button';
      b1.onclick = function (e) { e.stopPropagation(); R.clickOf(go)(); };
      b2.onclick = function (e) { e.stopPropagation(); var c = R.findClose($('.r-ohdr', box) || box); if (c) c.click(); };
      acts.appendChild(b1); acts.appendChild(b2);
      box.appendChild(acts);
      ov.appendChild(el('div', 'r-dlg-foot', 'Need a fresh start instead? Use New Account.'));
    }
    setText($('.r-dlg-t', top), 'Reset device?');
    setText($('.r-dlg-d', top), 'This resets the device and downgrades the game data. The current account will be unlinked from this emulator.');
    var go2 = $('#btn-reset-confirm', box);
    var b = $('.r-dlg-acts .danger span', box);
    setText(b, EN() ? 'Reset & downgrade' : (go2 ? go2.textContent.trim() : 'Reset'));
    var db = $('.r-dlg-acts .danger', box);
    if (db && go2 && db.disabled !== go2.disabled) db.disabled = go2.disabled;
    var t = $('.ed-section-title', body);
    if (t && EN()) setText(t, 'Steps');
  }
  if (M['reset-device-modal-overlay']) { M['reset-device-modal-overlay'].fn = resetDialog; M['reset-device-modal-overlay'].noFoot = 1; }
})();
