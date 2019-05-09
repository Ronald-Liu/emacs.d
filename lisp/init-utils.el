(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

(defun max-screen ()
  (interactive)
  (modify-all-frames-parameters '((fullscreen . maximized))))

(defun join-next-line()
  (interactive)
  (join-line -1))

(defun nil-func()
  (interactive)
  (message "do nothing"))

(provide 'init-utils)
