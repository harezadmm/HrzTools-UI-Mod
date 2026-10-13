/* Generic bottom-sheet / full-page dressing for every app modal.
   The app's own header is kept in the DOM (hidden); a reference-style header
   is drawn on top. Its X / back button forwards a click to the app's own close
   control. Extra header controls (inputs, buttons) are moved, never removed. */
(function () {
  'use strict';
  var R = window.HRZREF, $ = R.$, $$ = R.$$, el = R.el, svg = R.svg, setText = R.setText, EN = R.EN;

  /* reference titles / subtitles (English copy from the design) */
  var META = {
    'ed-overlay':                   { t: 'App Clone', s: 'Choose which save folder to edit' },
    'data-mode-overlay':            { t: 'Data', s: 'Township · city XML', page: 1, right: 'folderOpen' },
    'barn-modal-overlay':           { t: 'Barn Capacity', s: 'Increase item slots in the barn' },
    'barn-items-modal-overlay':     { t: 'Barn Items', s: 'Edit stored item quantities' },
    'passe-hub-modal-overlay':      { t: 'Golden Pass Hub', s: 'Pass type, expiry and train events' },
    'passe-tipo-modal-overlay':     { t: 'Golden Pass', s: 'Pass type' },
    'passe-modal-overlay':          { t: 'Golden Pass', s: 'Pass rewards and tiers' },
    'passe-time-modal-overlay':     { t: 'Pass Expiry', s: 'Expiry date and time' },
    'caixas-modal-overlay':         { t: 'Boxes & Slots', s: 'Expand market, factory and industry slots' },
    'mkt-modal-overlay':            { t: 'Market Slots', s: 'Expand market slots' },
    'fslots-modal-overlay':         { t: 'Factory Slots', s: 'Expand factory slots' },
    'altqtd-modal-overlay':         { t: 'Quantities', s: 'Item amounts and Lab modes' },
    'acadind-modal-overlay':        { t: 'Academy', s: 'Industry academy levels' },
    'vantagens-modal-overlay':      { t: 'Advantages', s: 'Township · Boosts & speeds', page: 1, right: 'rotateCcw' },
    'unlock-profile-modal-overlay': { t: 'Unlock Profile', s: 'Frames, backgrounds, titles & badges' },
    'ava-modal-overlay':            { t: 'Avatars', s: '', page: 1, right: 'sliders' },
    'zoo-modal-overlay':            { t: 'Zoo Cards', s: '', page: 1, right: 'listFilter' },
    'stk-modal-overlay':            { t: 'Stickers', s: '' },
    'achiev-modal-overlay':         { t: 'Achievements', s: '', page: 1, right: 'history' },
    'achievlist-modal-overlay':     { t: 'Achievements', s: 'Pick achievements to unlock' },
    'museumlist-modal-overlay':     { t: 'Museum', s: 'Pick museum items' },
    'deco-modal-overlay':           { t: 'Decorations & Skins', s: 'Township', page: 1, right: 'sliders' },
    'expdec-modal-overlay':         { t: 'Expedition Decorations', s: 'Township', page: 1, right: 'sliders' },
    'alldec-modal-overlay':         { t: 'Decorations', s: 'Township', page: 1, right: 'sliders' },
    'skins-modal-overlay':          { t: 'Skins', s: 'Township', page: 1, right: 'sliders' },
    'desban-modal-overlay':         { t: 'Desban Account', s: 'Recover a banned account' },
    'pxclone-modal-overlay':        { t: 'App Clone', s: 'Choose which save folder to edit' },
    'clone-modal-overlay':          { t: 'Clone Decoration', s: 'Copy a decoration layout' },
    'fetch-modal-overlay':          { t: 'Fetch City', s: 'Pull and decode city XML' },
    'regata-liga-modal-overlay':    { t: 'Regatta League', s: 'Choose league level' },
    'todas-cartas-modal-overlay':   { t: 'Cards', s: 'All card operations' },
    'twn-cards-modal':              { t: 'Cards', s: 'All card operations' },
    'enviar-carta-rede-modal-overlay': { t: 'Send Cards', s: 'Send via network' },
    'ecr-pack-picker-overlay':      { t: 'Card Packs', s: 'Pick a pack' },
    'trains-modal-overlay':         { t: 'Trains', s: 'Edit train items and wagons' },
    'additem-modal-overlay':        { t: 'Add Item', s: 'Add items to the barn' },
    'bk-overlay':                   { t: 'Backup / Restore', s: 'Account state' },
    'new-acc-overlay':              { t: 'New Account', s: 'Start a fresh account' },
    'reset-device-modal-overlay':   { t: 'Reset device?', s: '', dialog: 1 },
    'fi-ed-overlay':                { t: 'App Clone', s: 'Choose which save folder to edit' },
    'px-ed-overlay':                { t: 'App Clone', s: 'Choose which save folder to edit' },
    'fdp-overlay':                  { t: 'Golden Pass', s: 'Pass rewards and tiers' },
    'fi-item-modal':                { t: 'Items', s: '' },
    'px-aq-modal':                  { t: 'Aquariums', s: '' },
    'px-item-modal':                { t: 'Items', s: '' },
    'sc-dep-modal':                 { t: 'Deposit', s: 'SimCity' },
    'sc-opt-modal':                 { t: 'Options', s: 'SimCity' }
  };
  R.SHEET_META = META;
  var SKIP = { 'app-root': 1, 'login-overlay': 1, 'px-select-overlay': 1, 'px-buy-overlay': 1 };

  function findClose(hdr) {
    var cands = $$('button, [onclick]', hdr);
    var i, c;
    for (i = 0; i < cands.length; i++) { c = cands[i]; if (/close/i.test(c.getAttribute('onclick') || '')) return c; }
    for (i = 0; i < cands.length; i++) {
      c = cands[i];
      var cls = typeof c.className === 'string' ? c.className : '';
      var oc = c.getAttribute('onclick') || '';
      if (/open|save|apply|advance/i.test(oc)) continue;
      if (/close|-x|(^|\s)x(\s|$)/i.test(cls) || /^[✕×x]/i.test(c.textContent.trim())) return c;
    }
    return null;
  }
  R.findClose = findClose;
  /* sticky two-button footer; each button forwards to an existing app control */
  function footer(box, btns) {
    var f = box.querySelector(':scope > .r-sfoot');
    if (!f) {
      f = el('div', 'r-sfoot r-foot2');
      box.appendChild(f);
    } else if (f !== box.lastElementChild) {
      box.appendChild(f);
    }
    if (f.children.length !== btns.length) {
      f.innerHTML = '';
      btns.forEach(function () { var x = el('button', 'r-btn', '<span></span>'); x.type = 'button'; f.appendChild(x); });
    }
    btns.forEach(function (b, i) {
      var x = f.children[i];
      var cls = 'r-btn ' + (b.cls || 'sec');
      if (x.className !== cls) x.className = cls;
      x.onclick = function (e) { e.stopPropagation(); b.run(); };
      var ico = b.icon || '';
      if ((x.getAttribute('data-ico') || '') !== ico) {
        x.innerHTML = (ico ? svg(ico) : '') + '<span></span>';
        x.setAttribute('data-ico', ico);
      }
      setText($('span', x), b.text);
      var dis = !!(b.disabled && b.disabled());
      if (x.disabled !== dis) x.disabled = dis;
    });
    return f;
  }
  R.footer = footer;
  function clickOf(node) { return function () { if (node && !R.locked(node) && !node.disabled) node.click(); }; }
  R.clickOf = clickOf;
  function closeOf(ov) { return function () { var b = ov.querySelector('.r-shead .r-back'); if (b) b.click(); }; }
  R.closeOf = closeOf;
  function label(btn) {
    var t = (btn.textContent || '').replace(/\s+/g, ' ').trim();
    return t;
  }
  function titleOf(hdr) {
    var t = hdr.querySelector('h3, [class*="title"]');
    return t ? t.textContent.replace(/\s+/g, ' ').trim() : '';
  }
  function isOverlay(ov) {
    if (!ov.id || SKIP[ov.id]) return false;
    if (META[ov.id]) return true;
    return /overlay|modal/.test(ov.className || '') || /overlay|modal/.test(ov.id);
  }

  function dress(ov) {
    var box = ov.firstElementChild;
    while (box && /^(SCRIPT|STYLE)$/.test(box.tagName)) box = box.nextElementSibling;
    if (!box) return;
    var meta = META[ov.id] || {};
    var hdr = box.querySelector(':scope > [class*="head"], :scope > [class*="hdr"]');
    ov.classList.add('r-ov');
    box.classList.add('r-sheet');
    if (meta.page) { ov.classList.add('r-ov-page'); box.classList.add('r-page'); }
    if (meta.dialog) { ov.classList.add('r-ov-dialog'); box.classList.add('r-dialog'); }
    var head = box.querySelector(':scope > .r-shead');
    if (!head && hdr) {
      hdr.classList.add('r-ohdr');
      head = el('div', 'r-shead');
      if (meta.page) {
        head.innerHTML = '<div class="r-phead"><button type="button" class="r-iconbtn r-back">' + svg('arrowLeft') + '</button>' +
          '<div class="r-sh-tt"><div class="r-st"></div><div class="r-ss"></div></div>' +
          (meta.right ? '<button type="button" class="r-iconbtn r-right">' + svg(meta.right) + '</button>' : '') + '</div>';
      } else if (!meta.dialog) {
        head.innerHTML = '<div class="r-sh-handle"></div><div class="r-sh-head"><div class="r-sh-tt"><div class="r-sh-title r-st"></div><div class="r-sh-sub r-ss"></div></div>' +
          '<button type="button" class="r-sh-x r-back">' + svg('x') + '</button></div>';
      }
      box.insertBefore(head, box.firstChild);
      var bk = $('.r-back', head);
      if (bk) bk.onclick = function (e) {
        e.stopPropagation();
        var c = findClose(hdr);
        if (c) c.click(); else ov.classList.remove('open');
      };
      /* keep any extra header control reachable (search boxes, toggles, …) */
      var closeBtn = findClose(hdr);
      var extra = $$('input, select, textarea, button', hdr).filter(function (n) { return n !== closeBtn && !n.closest('.mdl-hdr-actions'); });
      var moved = [];
      extra.forEach(function (n) {
        var c = n;
        while (c.parentElement && c.parentElement !== hdr && !(closeBtn && c.parentElement.contains(closeBtn)) && !c.parentElement.querySelector('.mdl-hdr-actions')) c = c.parentElement;
        if (moved.indexOf(c) === -1 && !moved.some(function (m) { return m.contains(c); })) moved.push(c);
      });
      if (moved.length) {
        var row = el('div', 'r-shead-extra');
        head.appendChild(row);
        moved.forEach(function (c) { row.appendChild(c); });
      }
    }
    if (head) {
      var t = (EN() && meta.t) ? meta.t : (titleOf(hdr || box) || meta.t || '');
      setText($('.r-st', head), t);
      var sub = $('.r-ss', head);
      if (sub) {
        var s = typeof meta.sub === 'function' ? meta.sub(ov) : (EN() ? meta.s : '');
        setText(sub, s || '');
        sub.style.display = s ? '' : 'none';
      }
    }
    /* header primary actions (Save / Apply / Advance …) are mirrored in a footer */
    if (hdr && !meta.noFoot && !box.querySelector(':scope > .r-sfoot.r-own')) {
      var acts = $$('.mdl-hdr-actions button', hdr);
      if (acts.length) {
        var specs = [{ text: EN() ? 'Cancel' : 'Cancel', cls: 'sec', run: closeOf(ov) }];
        acts.forEach(function (a) {
          specs.push({ text: label(a) || 'Apply', cls: 'pri', run: clickOf(a), disabled: function () { return a.disabled; } });
        });
        footer(box, specs);
      }
    }
    if (meta.fn) { try { meta.fn(ov, box, head); } catch (e) { console.warn('hrz sheet ' + ov.id, e); } }
  }
  R.dressSheet = dress;

  var NESTED = '.ed-overlay, .stk-modal-overlay, .additem-modal-overlay, .desban-modal-overlay, .clone-modal-overlay, .mkt-modal-overlay, .barn-modal-overlay, .barn-items-modal-overlay, .new-acc-overlay';
  R.screen(function skinSheets() {
    var list = Array.prototype.slice.call(document.body.children);
    Array.prototype.forEach.call(document.querySelectorAll(NESTED), function (n) { if (list.indexOf(n) === -1) list.push(n); });
    for (var i = 0; i < list.length; i++) {
      var ov = list[i];
      if (ov.tagName !== 'DIV' || !isOverlay(ov)) continue;
      /* only touch overlays that are open (cheap) or never dressed yet */
      if (ov.classList.contains('r-ov') && !ov.classList.contains('open') && !ov.classList.contains('active') && !ov.classList.contains('show')) continue;
      dress(ov);
    }
  });
})();
