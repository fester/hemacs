;;; hemacs --- an emacs configuration

(def html-smarter-newline
  (move-end-of-line nil)
  (smart-newline)
  (sgml-close-tag)
  (move-beginning-of-line nil)
  (smart-newline))

(def ruby-newline-dwim
  (let ((add-newline (or (eolp)
                         (looking-at "\|$")
                         (looking-at "\)$"))))
    (move-end-of-line nil)
    (smart-newline)
    (insert "end")
    (move-beginning-of-line nil)
    (if add-newline
        (smart-newline)
      (indent-according-to-mode))))

(def slim-newline-dwim
  (move-end-of-line nil)
  (newline)
  (indent-according-to-mode))

(def coffee-smarter-newline
  (move-end-of-line nil)
  (insert-arrow)
  (coffee-newline-and-indent))

(defun ensure-space ()
  (unless (looking-back " " nil)
    (insert " ")))

(def insert-arrow
  (ensure-space)
  (insert "-> "))

(def insert-fat-arrow
  (ensure-space)
  (insert "=> "))

(def smart-ruby-colon
  (if (looking-back "[[:word:]]" nil)
      (insert ": ")
    (insert ":")))

(def smart-css-colon
  (let ((current-line (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
    (cond ((string-match "^\\(?:[^[:blank:]]+\\|[[:blank:]]+[[:word:]]*[#&.@,]+\\)" current-line)
           (insert ":"))
          ((looking-at "\;.*")
           (insert ": "))
          (:else
           (insert ": ;")
           (backward-char)))))

(def smart-js-colon
  (insert ":")
  (ensure-space)
  (insert ",")
  (backward-char))

(def pad-comma
  (insert ",")
  (ensure-space))

(def pad-equals
  (if (nth 3 (syntax-ppss))
      (insert "=")
    (cond ((looking-back "=[[:space:]]" nil)
           (delete-char -1))
          ((looking-back "[^#/|!<>]" nil)
           (ensure-space)))
    (insert "=")
    (ensure-space)))

(def pad-pipes
  (ensure-space)
  (insert "||")
  (backward-char))

(def open-brackets-newline-and-indent
  (ensure-space)
  (insert "{\n\n}")
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(def pad-brackets
  (unless (looking-back "(" nil)
    (ensure-space))
  (insert "{  }")
  (backward-char 2))

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(provide 'hemacs)
