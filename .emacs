(defun corona ()
  (interactive)
  (shell-command "/Applications/CoronaSDK/Corona\\ Terminal &" "*corona*")
  (set-buffer "*corona*")
  (setq compilation-error-regexp-alist
        (list '("^.*?error: \\(.*?\\):\\([0-9]+\\)" 1 2)))
  (compilation-shell-minor-mode)
  (setq comint-move-point-for-output t))
