(deftheme hemacs)

(let ((base00 "#2d2d2d")
      (base01 "#393939")
      (base02 "#515151")
      (base03 "#747369")
      (base04 "#a09f93")
      (base05 "#d3d0c8")
      (base06 "#e8e6df")
      (base07 "#f2f0ec")
      (base08 "#f2777a")
      (base09 "#f99157")
      (base0A "#ffcc66")
      (base0B "#99cc99")
      (base0C "#66cccc")
      (base0D "#6699cc")
      (base0E "#cc99cc")
      (base0F "#d27b53"))

  (custom-theme-set-faces
   'hemacs

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background ,base00 :foreground ,base05))))
   `(border ((t (:background ,base03))))
   `(border-glyph ((t (nil))))
   `(cursor ((t (:background ,base08))))
   `(gui-element ((t (:background ,base03 :foreground ,base06))))
   `(highlight ((t (:background ,base01))))
   `(hl-line ((t (:background ,(color-darken-name base01 2)))))
   `(link ((t (:foreground ,base0D))))
   `(link-visited ((t (:foreground ,base0E))))
   `(minibuffer-prompt ((t (:foreground ,base0D))))
   `(region ((t (:background ,base02))))
   `(vhl/default-face ((t (:background ,base02))))
   `(next-error ((t (:background ,base02))))
   `(secondary-selection ((t (:background ,base01))))
   `(header-line ((t (:foreground ,base0E :background nil))))
   `(auto-dim-other-buffers-face ((t (:background ,base01))))

   `(ace-jump-face-foreground ((t (:foreground ,base08))))
   `(guide-key/highlight-command-face ((t (:foreground ,base0A))))
   `(guide-key/key-face ((t (:foreground ,base08))))
   `(guide-key/prefix-command-face ((t (:foreground ,base0C))))

   ;; modeline
   `(mode-line ((t (:height 0.9 :background "black" :foreground ,base04 :box (:line-width 4 :color "black" :style nil)))))
   `(mode-line-inactive ((t (:height 0.9 :background ,(color-darken-name base00 4) :foreground ,base03 :box (:line-width 4 :color ,(color-darken-name base00 4) :style nil)))))
   `(mode-line-buffer-id ((t (:foreground ,base0E :background nil))))
   `(mode-line-emphasis ((t (:foreground ,base06 :slant italic))))
   `(mode-line-highlight ((t (:foreground ,base0E :box nil :weight bold))))
   `(powerline-active1 ((t :background ,base00)))
   `(powerline-active2 ((t :background ,(color-lighten-name base00 10))))
   `(powerline-inactive1 ((t :background ,(color-darken-name base00 4))))
   `(powerline-inactive2 ((t :background ,(color-darken-name base00 4))))
   `(mm-command-output ((t (:background ,base02 :foreground ,base04))))
   `(alert-trivial-face ((t (:inherit nil :foreground nil :background nil))))
   `(anzu-mode-line ((t (:foreground ,base0A))))
   `(persp-selected-face ((t (:foreground ,base05))))
   `(compilation-mode-line-exit ((t (:inherit nil :foreground nil :background nil))))
   `(compilation-mode-line-fail ((t (:inherit nil :foreground nil :background nil))))
   `(compilation-mode-line-run ((t (:inherit nil :foreground nil :background nil))))

   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,base0C))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,base02))))
   `(font-lock-comment-face ((t (:foreground ,base03))))
   `(font-lock-constant-face ((t (:foreground ,base09))))
   `(font-lock-doc-face ((t (:foreground ,base04))))
   `(font-lock-doc-string-face ((t (:foreground ,base03))))
   `(font-lock-function-name-face ((t (:foreground ,base0D))))
   `(font-lock-keyword-face ((t (:foreground ,base0E))))
   `(font-lock-negation-char-face ((t (:foreground ,base0B))))
   `(font-lock-preprocessor-face ((t (:foreground ,base0D))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,base0A))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,base0E))))
   `(font-lock-string-face ((t (:foreground ,base0B))))
   `(font-lock-type-face ((t (:foreground ,base0A))))
   `(font-lock-variable-name-face ((t (:foreground ,base0C))))
   `(font-lock-warning-face ((t (:foreground ,base08))))

   ;; linum-mode
   `(linum ((t (:background ,base01 :foreground ,base03))))
   `(fringe ((t (:background ,base01 :foreground ,base03))))
   `(vertical-border ((t (:foreground ,base02))))

   ;; Search
   `(match ((t (:foreground ,base0D :background ,base01 :inverse-video t))))
   `(isearch ((t (:foreground ,base0A :background ,base01 :inverse-video t))))
   `(query-replace ((t (:foreground ,base0A :background ,base01 :inverse-video t))))
   `(isearch-lazy-highlight-face ((t (:foreground ,base0C :background ,base01 :inverse-video t))))
   `(isearch-fail ((t (:background ,base01 :inherit font-lock-warning-face :inverse-video t))))

   ;; Company
   `(company-tooltip ((t (:background ,(color-darken-name base01 10) :foreground ,base04))))
   `(company-tooltip-selection ((t (:background ,(color-darken-name base01 12) :foreground ,base06))))
   `(company-tooltip-common ((t (:inherit company-tooltip :foreground ,base04))))
   `(company-tooltip-common-selection ((t (:foreground ,base06))))
   `(company-echo-common ((t (:inherit company-tooltip :foreground ,base0A))))
   `(company-scrollbar-bg ((t (:background ,base01))))
   `(company-scrollbar-fg ((t (:background ,base02))))
   `(company-tooltip-annotation ((t (:inherit company-tooltip :foreground ,base02))))
   `(company-preview ((t (:background ,base00 :foreground ,base03))))
   `(company-preview-common ((t (:foreground ,base03))))
   `(company-preview-search ((t (:background ,base00))))

   `(popup-face ((t (:foreground ,base01 :background ,base05))))
   `(popup-menu-selection-face ((t (:foreground ,base07 :background ,base0D))))
   `(popup-isearch-match ((t (:foreground ,base0A :background nil))))

   ;; Flymake
   `(flymake-warnline ((t (:underline ,base09 :background ,base01))))
   `(flymake-errline ((t (:underline ,base08 :background ,base01))))

   ;; Clojure errors
   `(clojure-test-failure-face ((t (:background nil :inherit flymake-warnline))))
   `(clojure-test-error-face ((t (:background nil :inherit flymake-errline))))
   `(clojure-test-success-face ((t (:background nil :foreground nil :underline ,base0B))))

   ;; For Brian Carper's extended clojure syntax table
   `(clojure-keyword ((t (:foreground ,base0A))))
   `(clojure-parens ((t (:foreground ,base06))))
   `(clojure-braces ((t (:foreground ,base0B))))
   `(clojure-brackets ((t (:foreground ,base0A))))
   `(clojure-double-quote ((t (:foreground ,base0C :background nil))))
   `(clojure-special ((t (:foreground ,base0D))))
   `(clojure-java-call ((t (:foreground ,base0E))))

   ;; MMM-mode
   `(mmm-code-submode-face ((t (:background ,base03))))
   `(mmm-comment-submode-face ((t (:inherit font-lock-comment-face))))
   `(mmm-output-submode-face ((t (:background ,base03))))

   ;; org-mode
   `(org-date ((t (:foreground ,base0E))))
   `(org-done ((t (:foreground ,base0B))))
   `(org-hide ((t (:foreground ,base01))))
   `(org-link ((t (:foreground ,base0D))))
   `(org-todo ((t (:foreground ,base08))))
   `(org-checkbox ((t (:foreground ,base0E))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,base0E))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,base0D))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,base0C))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,base0B))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,base0A))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,base09))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,base08))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,base03))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,base05))))

   ;; IDO
   `(ido-subdir ((t (:foreground ,base04))))
   `(ido-first-match ((t (:foreground ,base09 :weight bold))))
   `(ido-only-match ((t (:foreground ,base08 :weight bold))))
   `(ido-indicator ((t (:foreground ,base08 :background ,base01))))
   `(ido-virtual ((t (:foreground ,base04))))

   `(trailing-whitespace ((t (:background ,(color-darken-name base00 2) :foreground ,base0A))))
   `(whitespace-empty ((t (:foreground ,base08 :background ,base0A))))
   `(whitespace-hspace ((t (:background ,base04 :foreground ,base04))))
   `(whitespace-indentation ((t (:background ,base0A :foreground ,base08))))
   `(whitespace-line ((t (:background ,base01 :foreground ,base0F))))
   `(whitespace-newline ((t (:foreground ,base04))))
   `(whitespace-space ((t (:background ,base01 :foreground ,base04))))
   `(whitespace-space-after-tab ((t (:background ,base0A :foreground ,base08))))
   `(whitespace-space-before-tab ((t (:background ,base09 :foreground ,base08))))
   `(whitespace-tab ((t (:background ,base04 :foreground ,base04))))
   `(whitespace-trailing ((t (:background ,base08 :foreground ,base0A))))

   `(git-gutter:added ((t (:foreground ,base03))))
   `(git-gutter:deleted ((t (:foreground ,base03))))
   `(git-gutter:modified ((t (:foreground ,base03))))

   `(paren-face-match ((t (:foreground nil :background nil :inherit show-paren-match))))
   `(paren-face-mismatch ((t (:foreground nil :background nil :inherit show-paren-mismatch))))
   `(paren-face-no-match ((t (:foreground nil :background nil :inherit show-paren-mismatch))))
   `(paren-face ((t (:foreground ,base04 :background nil))))

   `(show-paren-match ((t (:background nil :foreground nil :underline t))))
   `(show-paren-mismatch ((t (:background ,base08 :foreground ,base01))))
   `(highlight-symbol-face ((t (:foreground nil :background nil :underline t))))

   `(diff-hl-insert ((t (:foreground ,(color-darken-name base0B 10) :background ,base01))))
   `(diff-hl-unknown ((t (:foreground ,(color-darken-name base0B 10) :background ,base01))))
   `(diff-hl-delete ((t (:foreground ,(color-darken-name base08 10) :background ,base01))))
   `(diff-hl-change ((t (:foreground ,(color-darken-name base0D 10) :background ,base01))))

   `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face :weight normal))))
   `(sh-quoted-exec ((t (:foreground nil :inherit font-lock-preprocessor-face))))
   `(slime-highlight-edits-face ((t (:weight bold))))
   `(slime-repl-input-face ((t (:weight normal :underline nil))))
   `(slime-repl-prompt-face ((t (:underline nil :weight bold :foreground ,base0E))))
   `(slime-repl-result-face ((t (:foreground ,base0B))))
   `(slime-repl-output-face ((t (:foreground ,base0D :background ,base01))))

   `(csv-separator-face ((t (:foreground ,base09))))

   `(diff-added ((t (:foreground ,base0B))))
   `(diff-changed ((t (:foreground ,base0A))))
   `(diff-removed ((t (:foreground ,base08))))
   `(diff-header ((t (:background ,base01))))
   `(diff-file-header ((t (:background ,base02))))
   `(diff-hunk-header ((t (:background ,base01 :foreground ,base0E))))

   `(ediff-even-diff-A ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-even-diff-B ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-odd-diff-A  ((t (:foreground ,base04 :background nil :inverse-video t))))
   `(ediff-odd-diff-B  ((t (:foreground ,base04 :background nil :inverse-video t))))

   `(eldoc-highlight-function-argument ((t (:foreground ,base0B :weight bold))))

   ;; undo-tree
   `(undo-tree-visualizer-default-face ((t (:foreground ,base06))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,base0B :weight bold))))
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,base08))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,base0A))))

   ;; dired+
   `(diredp-compressed-file-suffix ((t (:foreground ,base0D))))
   `(diredp-dir-heading ((t (:foreground nil :background nil :inherit heading))))
   `(diredp-dir-priv ((t (:foreground ,base0C :background nil))))
   `(diredp-exec-priv ((t (:foreground ,base0D :background nil))))
   `(diredp-executable-tag ((t (:foreground ,base08 :background nil))))
   `(diredp-file-name ((t (:foreground ,base0A))))
   `(diredp-file-suffix ((t (:foreground ,base0B))))
   `(diredp-flag-mark-line ((t (:background nil :inherit highlight))))
   `(diredp-ignored-file-name ((t (:foreground ,base04))))
   `(diredp-link-priv ((t (:background nil :foreground ,base0E))))
   `(diredp-mode-line-flagged ((t (:foreground ,base08))))
   `(diredp-mode-line-marked ((t (:foreground ,base0B))))
   `(diredp-no-priv ((t (:background nil))))
   `(diredp-number ((t (:foreground ,base0A))))
   `(diredp-other-priv ((t (:background nil :foreground ,base0E))))
   `(diredp-rare-priv ((t (:foreground ,base08 :background nil))))
   `(diredp-read-priv ((t (:foreground ,base0B :background nil))))
   `(diredp-symlink ((t (:foreground ,base0E))))
   `(diredp-write-priv ((t (:foreground ,base0A :background nil))))

   ;; Magit (a patch is pending in magit to make these standard upstream)
   `(magit-branch ((t (:foreground ,base0B))))
   `(magit-header ((t (:inherit nil :weight bold))))
   `(magit-item-highlight ((t (:inherit highlight :background nil))))
   `(magit-log-graph ((t (:foreground ,base04))))
   `(magit-log-sha1 ((t (:foreground ,base0E))))
   `(magit-log-head-label-bisect-bad ((t (:foreground ,base08))))
   `(magit-log-head-label-bisect-good ((t (:foreground ,base0B))))
   `(magit-log-head-label-default ((t (:foreground ,base0A :box nil :weight bold))))
   `(magit-log-head-label-local ((t (:foreground ,base0D))))
   `(magit-log-head-label-remote ((t (:foreground ,base0B))))
   `(magit-log-head-label-tags ((t (:foreground ,base0C :box nil :weight bold))))
   `(magit-section-title ((t (:inherit diff-hunk-header))))

   `(link ((t (:foreground nil :underline t))))
   `(widget-button ((t (:underline t))))
   `(widget-field ((t (:background ,base03 :box (:line-width 1 :color ,base06)))))

   ;; Compilation (most faces politely inherit from 'success, 'error, 'warning etc.)
   `(compilation-info ((t (:foreground ,base0A))))
   `(compilation-column-number ((t (:foreground ,base0A))))
   `(compilation-line-number ((t (:foreground ,base0A))))
   `(compilation-message-face ((t (:foreground ,base0D))))
   `(success ((t (:foreground ,base0B))))

   `(regex-tool-matched-face ((t (:foreground nil :background nil :inherit match))))

   ;; mark-multiple
   `(mm/master-face ((t (:inherit region :foreground nil :background nil))))
   `(mm/mirror-face ((t (:inherit region :foreground nil :background nil))))

   `(org-agenda-structure ((t (:foreground ,base0E))))
   `(org-agenda-date ((t (:foreground ,base0D :underline nil))))
   `(org-agenda-done ((t (:foreground ,base0B))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,base04))))
   `(org-block ((t (:foreground ,base09))))
   `(org-code ((t (:foreground ,base0A))))
   `(org-column ((t (:background ,base03))))
   `(org-column-title ((t (:inherit org-column :weight bold :underline t))))
   `(org-date ((t (:foreground ,base0E :underline t))))
   `(org-document-info ((t (:foreground ,base0C))))
   `(org-document-info-keyword ((t (:foreground ,base0B))))
   `(org-document-title ((t (:weight bold :foreground ,base09 :height 1.44))))
   `(org-done ((t (:foreground ,base0B))))
   `(org-ellipsis ((t (:foreground ,base04))))
   `(org-footnote ((t (:foreground ,base0C))))
   `(org-formula ((t (:foreground ,base08))))
   `(org-hide ((t (:foreground ,base03))))
   `(org-link ((t (:foreground ,base0D))))
   `(org-scheduled ((t (:foreground ,base0B))))
   `(org-scheduled-previously ((t (:foreground ,base09))))
   `(org-scheduled-today ((t (:foreground ,base0B))))
   `(org-special-keyword ((t (:foreground ,base09))))
   `(org-table ((t (:foreground ,base0E))))
   `(org-todo ((t (:foreground ,base08))))
   `(org-upcoming-deadline ((t (:foreground ,base09))))
   `(org-warning ((t (:weight bold :foreground ,base08))))

   `(markdown-url-face ((t (:inherit link))))
   `(markdown-link-face ((t (:foreground ,base0D :underline t))))

   ;; js2-mode
   `(js2-warning-face ((t (:underline ,base09))))
   `(js2-error-face ((t (:foreground nil :underline ,base08))))
   `(js2-external-variable-face ((t (:foreground ,base0E))))
   `(js2-function-param-face ((t (:foreground ,base0D))))
   `(js2-instance-member-face ((t (:foreground ,base0D))))
   `(js2-private-function-call-face ((t (:foreground ,base08))))

   ;; js3-mode
   `(js3-warning-face ((t (:underline ,base09))))
   `(js3-error-face ((t (:foreground nil :underline ,base08))))
   `(js3-external-variable-face ((t (:foreground ,base0E))))
   `(js3-function-param-face ((t (:foreground ,base0D))))
   `(js3-jsdoc-tag-face ((t (:foreground ,base09))))
   `(js3-jsdoc-type-face ((t (:foreground ,base0C))))
   `(js3-jsdoc-value-face ((t (:foreground ,base0A))))
   `(js3-jsdoc-html-tag-name-face ((t (:foreground ,base0D))))
   `(js3-jsdoc-html-tag-delimiter-face ((t (:foreground ,base0B))))
   `(js3-instance-member-face ((t (:foreground ,base0D))))
   `(js3-private-function-call-face ((t (:foreground ,base08))))

   ;; nxml
   `(nxml-name-face ((t (:foreground unspecified :inherit font-lock-constant-face))))
   `(nxml-attribute-local-name-face ((t (:foreground unspecified :inherit font-lock-variable-name-face))))
   `(nxml-ref-face ((t (:foreground unspecified :inherit font-lock-preprocessor-face))))
   `(nxml-delimiter-face ((t (:foreground unspecified :inherit font-lock-keyword-face))))
   `(nxml-delimited-data-face ((t (:foreground unspecified :inherit font-lock-string-face))))
   `(rng-error-face ((t (:underline ,base08))))

   ;; RHTML
   `(erb-delim-face ((t (:background ,base01))))
   `(erb-exec-face ((t (:background ,base01 :weight bold))))
   `(erb-exec-delim-face ((t (:background ,base01))))
   `(erb-out-face ((t (:background ,base01 :weight bold))))
   `(erb-out-delim-face ((t (:background ,base01))))
   `(erb-comment-face ((t (:background ,base01 :weight bold :slant italic))))
   `(erb-comment-delim-face ((t (:background ,base01))))

   ;; Message-mode
   `(message-header-other ((t (:foreground nil :background nil :weight normal))))
   `(message-header-subject ((t (:inherit message-header-other :weight bold :foreground ,base0A))))
   `(message-header-to ((t (:inherit message-header-other :weight bold :foreground ,base09))))
   `(message-header-cc ((t (:inherit message-header-to :foreground nil))))
   `(message-header-name ((t (:foreground ,base0D :background nil))))
   `(message-header-newsgroups ((t (:foreground ,base0C :background nil :slant normal))))
   `(message-separator ((t (:foreground ,base0E))))

   ;; Jabber
   `(jabber-chat-prompt-local ((t (:foreground ,base0A))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,base09))))
   `(jabber-chat-prompt-system ((t (:foreground ,base0A :weight bold))))
   `(jabber-chat-text-local ((t (:foreground ,base0A))))
   `(jabber-chat-text-foreign ((t (:foreground ,base09))))
   `(jabber-chat-text-error ((t (:foreground ,base08))))
   `(jabber-roster-user-online ((t (:foreground ,base0B))))
   `(jabber-roster-user-xa ((t :foreground ,base04)))
   `(jabber-roster-user-dnd ((t :foreground ,base0A)))
   `(jabber-roster-user-away ((t (:foreground ,base09))))
   `(jabber-roster-user-chatty ((t (:foreground ,base0E))))
   `(jabber-roster-user-error ((t (:foreground ,base08))))
   `(jabber-roster-user-offline ((t (:foreground ,base04))))
   `(jabber-rare-time-face ((t (:foreground ,base04))))
   `(jabber-activity-face ((t (:foreground ,base0E))))
   `(jabber-activity-personal-face ((t (:foreground ,base0C))))

   ;; Gnus
   `(gnus-cite-1 ((t (:inherit outline-1 :foreground nil))))
   `(gnus-cite-2 ((t (:inherit outline-2 :foreground nil))))
   `(gnus-cite-3 ((t (:inherit outline-3 :foreground nil))))
   `(gnus-cite-4 ((t (:inherit outline-4 :foreground nil))))
   `(gnus-cite-5 ((t (:inherit outline-5 :foreground nil))))
   `(gnus-cite-6 ((t (:inherit outline-6 :foreground nil))))
   `(gnus-cite-7 ((t (:inherit outline-7 :foreground nil))))
   `(gnus-cite-8 ((t (:inherit outline-8 :foreground nil))))
   ;; there are several more -cite- faces...
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-header-from ((t (:inherit message-header-other-face :weight bold :foreground ,base09))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-button ((t (:inherit link :foreground nil))))
   `(gnus-signature ((t (:inherit font-lock-comment-face))))

   `(gnus-summary-normal-unread ((t (:foreground ,base0D :weight normal))))
   `(gnus-summary-normal-read ((t (:foreground ,base06 :weight normal))))
   `(gnus-summary-normal-ancient ((t (:foreground ,base0C :weight normal))))
   `(gnus-summary-normal-ticked ((t (:foreground ,base09 :weight normal))))
   `(gnus-summary-low-unread ((t (:foreground ,base04 :weight normal))))
   `(gnus-summary-low-read ((t (:foreground ,base04 :weight normal))))
   `(gnus-summary-low-ancient ((t (:foreground ,base04 :weight normal))))
   `(gnus-summary-high-unread ((t (:foreground ,base0A :weight normal))))
   `(gnus-summary-high-read ((t (:foreground ,base0B :weight normal))))
   `(gnus-summary-high-ancient ((t (:foreground ,base0B :weight normal))))
   `(gnus-summary-high-ticked ((t (:foreground ,base09 :weight normal))))
   `(gnus-summary-cancelled ((t (:foreground ,base08 :background nil :weight normal))))

   `(gnus-group-mail-low ((t (:foreground ,base04))))
   `(gnus-group-mail-low-empty ((t (:foreground ,base04))))
   `(gnus-group-mail-1 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-mail-2 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-mail-3 ((t (:foreground nil :weight normal :inherit outline-3))))
   `(gnus-group-mail-4 ((t (:foreground nil :weight normal :inherit outline-4))))
   `(gnus-group-mail-5 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-mail-6 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-mail-1 :foreground ,base04))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-mail-2 :foreground ,base04))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-mail-3 :foreground ,base04))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-mail-4 :foreground ,base04))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-mail-5 :foreground ,base04))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-mail-6 :foreground ,base04))))
   `(gnus-group-news-1 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-news-2 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-news-3 ((t (:foreground nil :weight normal :inherit outline-7))))
   `(gnus-group-news-4 ((t (:foreground nil :weight normal :inherit outline-8))))
   `(gnus-group-news-5 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-news-6 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-news-1-empty ((t (:inherit gnus-group-news-1 :foreground ,base04))))
   `(gnus-group-news-2-empty ((t (:inherit gnus-group-news-2 :foreground ,base04))))
   `(gnus-group-news-3-empty ((t (:inherit gnus-group-news-3 :foreground ,base04))))
   `(gnus-group-news-4-empty ((t (:inherit gnus-group-news-4 :foreground ,base04))))
   `(gnus-group-news-5-empty ((t (:inherit gnus-group-news-5 :foreground ,base04))))
   `(gnus-group-news-6-empty ((t (:inherit gnus-group-news-6 :foreground ,base04))))

   `(erc-direct-msg-face ((t (:foreground ,base09))))
   `(erc-error-face ((t (:foreground ,base08))))
   `(erc-header-face ((t (:foreground ,base06 :background ,base04))))
   `(erc-input-face ((t (:foreground ,base0B))))
   `(erc-keyword-face ((t (:foreground ,base0A))))
   `(erc-current-nick-face ((t (:foreground ,base0B))))
   `(erc-my-nick-face ((t (:foreground ,base0B))))
   `(erc-nick-default-face ((t (:weight normal :foreground ,base0E))))
   `(erc-nick-msg-face ((t (:weight normal :foreground ,base0A))))
   `(erc-notice-face ((t (:foreground ,base04))))
   `(erc-pal-face ((t (:foreground ,base09))))
   `(erc-prompt-face ((t (:foreground ,base0D))))
   `(erc-timestamp-face ((t (:foreground ,base0C))))

   `(custom-variable-tag ((t (:foreground ,base0D))))
   `(custom-group-tag ((t (:foreground ,base0D))))
   `(custom-state ((t (:foreground ,base0B)))))

  (custom-theme-set-variables
   'hemacs

   `(highlight-tail-colors '((,(color-darken-name base0A 33) . 0)
                             (,(color-darken-name base0E 33) . 10)
                             (,base02 . 20)
                             (,base01 . 45)
                             (,base00 . 70)))

   `(ansi-color-names-vector
     ;; black, base08, base0B, base0A, base0D, magenta, cyan, white
     [,base00 ,base08 ,base0B ,base0A ,base0D ,base0E ,base0D ,base05])
   `(ansi-term-color-vector
     ;; black, base08, base0B, base0A, base0D, magenta, cyan, white
     [unspecified ,base00 ,base08 ,base0B ,base0A ,base0D ,base0E ,base0D ,base05])))

(provide-theme 'hemacs)
;;; hemacs-theme.el ends here
