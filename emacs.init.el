(global-set-key [24 112]
  (lambda (&optional count)
    "prev-window" (interactive "P")
    (if count
      (other-window (- count))
      (other-window -1) )
    ))
;(global-set-key [24 112] (lambda () "prev-window" (interactive) (other-window -1)))
;(global-set-key (kbd "C-x p")  (other-window -1))
;; ;;; This was installed by package-install.el.
;; ;;; This provides support for the package system and
;; ;;; interfacing with ELPA, the package archive.
;; ;;; Move this code earlier if you want to reference
;; ;;; packages in your .emacs.
;; (when
;;     (load
;;      (expand-file-name "~/.emacs.d/elpa/package.el"))
;;   (package-initialize))
;; ;
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(custom-set-variables  
'(package-selected-packages    (quote     (ess-R-data-view ess-smart-equals ess magit gitlab ensime json-mode json))))

(custom-set-faces  ;; custom-set-faces was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(winner-mode)
