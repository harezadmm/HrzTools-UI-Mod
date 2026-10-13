/* HRZ reference skin — DOM dressing for the "UI REFRENSI KUMAU" layouts.
   Only decorates existing nodes (wrap / add icons / add chrome). Never removes
   ids, onclick handlers or inputs that the app logic depends on. Idempotent:
   safe to run any number of times. */
(function () {
  'use strict';
  var R = window.HRZREF = window.HRZREF || {};
  var svg = window.hrzSvg;
  var $ = function (s, r) { return (r || document).querySelector(s); };
  var $$ = function (s, r) { return Array.prototype.slice.call((r || document).querySelectorAll(s)); };
  var EN = function () { try { return (typeof curLang === 'undefined') || curLang === 'en'; } catch (e) { return true; } };
  R.$ = $; R.$$ = $$;
  /* app globals declared with let/const are not on window */
  R.px = function () { try { return (typeof pxState !== 'undefined') ? pxState : null; } catch (e) { return null; } };

  function el(tag, cls, html) {
    var e = document.createElement(tag);
    if (cls) e.className = cls;
    if (html != null) e.innerHTML = html;
    return e;
  }
  R.el = el;
  function iconImage(name) {
    var safe = String(name || 'info').replace(/[^a-zA-Z0-9_-]/g, '');
    return '<img class="r-feature-icon" src="file:///android_asset/ui/feature-icons/' + safe + '.svg" alt="" aria-hidden="true" draggable="false">';
  }
  function brandImage(name) {
    var safe = String(name || '').replace(/[^a-zA-Z0-9_-]/g, '');
    return '<img class="r-game-logo" src="file:///android_asset/ui/game-logos/' + safe + '.webp" alt="" aria-hidden="true" draggable="false">';
  }
  function setIcon(host, name) {
    if (!host) return;
    if (host.getAttribute('data-r-ico') === name) return;
    var isBrand = String(name).indexOf('game:') === 0;
    host.classList.toggle('r-brand-host', isBrand);
    host.innerHTML = isBrand ? brandImage(String(name).slice(5)) : iconImage(name);
    host.setAttribute('data-r-ico', name);
  }
  R.iconImage = iconImage;
  R.brandImage = brandImage;
  R.setIcon = setIcon;
  function setText(node, txt) { if (node && node.textContent !== txt) node.textContent = txt; }
  R.setText = setText;

  /* ======================================================================
     A1 · Choose your game
     ====================================================================== */
  var GAMES = {
    township:     { tone: 't-ac',    icon: 'game:township',     title: 'Township',        sub: 'City builder & farm strategy.' },
    gardenscapes: { tone: 't-green', icon: 'game:gardenscapes', title: 'Gardenscapes',    sub: 'Match-3 garden restoration.' },
    homescapes:   { tone: 't-ac2',   icon: 'game:homescapes',   title: 'Homescapes',      sub: 'Match-3 mansion makeover.' },
    royalmatch:   { tone: 't-pink',  icon: 'game:royalmatch',   title: 'Royal Match',     sub: 'Match-3 castle restoration.' },
    royalkingdom: { tone: 't-amber', icon: 'game:royalkingdom', title: 'Royal Kingdom',   sub: 'Match-3 kingdom builder.' },
    fishdom:      { tone: 't-cyan',  icon: 'game:fishdom',      title: 'Fishdom',         sub: 'Match-3 aquarium decorating.' },
    familyisland: { tone: 't-lime',  icon: 'game:familyisland', title: 'Family Island',   sub: 'Island farm adventure.' },
    simcity:      { tone: 't-ac',    icon: 'game:simcity',      title: 'SimCity BuildIt', sub: 'City simulation & management.' }
  };
  R.GAMES = GAMES;

  function skinGameSelect() {
    var ov = $('#px-select-overlay');
    if (!ov) return;
    var head = $('.px-sel-head', ov);
    var sub = $('.px-sel-sub', ov);
    var ps = R.px();
    var allowed = (ps && Array.isArray(ps.allowed)) ? ps.allowed : null;
    var n = allowed ? allowed.length : $$('.px-gcard', ov).filter(function (c) { return !c.classList.contains('px-gcard-locked'); }).length;
    if (sub) {
      var html = (EN() ? 'HRZTools · Multi game' : sub.getAttribute('data-r-base') || sub.textContent) +
        '<span class="r-dotsep">•</span><span class="r-unlocked">' + n + ' unlocked</span>';
      if (!sub.getAttribute('data-r-base')) sub.setAttribute('data-r-base', sub.textContent.trim());
      if (sub.innerHTML !== html) sub.innerHTML = html;
    }
    if (head && !$('.r-prof', head)) {
      var b = el('button', 'r-iconbtn r-prof', svg('user'));
      b.type = 'button';
      b.setAttribute('aria-label', 'Account');
      b.onclick = function (e) {
        e.stopPropagation();
        try { showToast('HRZTools · ' + n + ' games unlocked', 'info'); } catch (x) {}
      };
      head.appendChild(b);
    }
    $$('.px-gcard', ov).forEach(function (card) {
      var key = card.id.replace('px-gcard-', '');
      var g = GAMES[key];
      if (!g) return;
      var locked = card.classList.contains('px-gcard-locked');
      ['t-ac','t-ac2','t-green','t-pink','t-cyan','t-lime','t-amber','t-grey'].forEach(function (t) { card.classList.remove(t); });
      card.classList.add(locked ? 't-grey' : g.tone);
      setIcon($('.px-gcard-icon', card), g.icon);
      var title = $('.px-gcard-title', card), desc = $('.px-gcard-sub', card), open = $('.px-gcard-open', card);
      if (title && desc && (!title.parentElement.classList.contains('r-gtext'))) {
        var wrap = el('div', 'r-gtext');
        card.insertBefore(wrap, title);
        wrap.appendChild(title); wrap.appendChild(desc);
      }
      if (EN()) { setText(title, g.title); setText(desc, g.sub); }
      if (open) {
        var want = locked ? (svg('lock') + '<span>Soon</span>') : ('<span>' + (EN() ? 'Open' : (open.textContent.replace(/[→🔒\s]+$/, '') || 'Open')) + '</span>' + svg('arrowRight'));
        if (open.getAttribute('data-r-state') !== String(locked) || !open.querySelector('svg')) {
          open.innerHTML = want;
          open.setAttribute('data-r-state', String(locked));
        }
      }
    });
  }
  R.skinGameSelect = skinGameSelect;

  R.EN = EN; R.svg = svg;
  R.extra = [skinGameSelect];   /* core loads first: screen files push after */
  R.screen = function (fn) { R.extra.push(fn); };
})();
