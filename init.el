;; optimization line
(setq native-comp-speed 3)

;;; straight.el installation
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Add Packages Path
(add-to-list 'load-path "~/.emacs.d/my-packages/")

;; removes the menu bar
(menu-bar-mode -1)

;; removes the tool bar.
(tool-bar-mode -1)

;; removes the title bar
;;(add-to-list 'default-frame-alist '(undecorated . t))

(require 'package)
;;(package-initialize)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("org-plus-contrib" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-refresh-contents)

;; Relative Line Numbers (used for ease of use of commands)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

;; C edits
(setq tab-width 8)
(setq-default c-basic-offset 8)

(setq
 auto-save-default nil
 backup-inhibited t)

(setq show-paren-delay 0)
(show-paren-mode t)

;(setq show-paren-style 'expression)
(setq show-paren-style 'parenthesis)
(set-face-background 'show-paren-match "#ff0000")

(global-font-lock-mode t)
(cua-selection-mode t)

(display-battery-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(set-scroll-bar-mode nil)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(setq
 ring-bell-function 'ignore
 frame-title-format "%b"
 inhibit-startup-message t
 inhibit-startup-echo-area-message t
 resize-mini-windows t
 max-mini-window-height .25
 )

;; org mode stuff
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "~/agenda/comp-agenda.org"
			     "~/agenda/agenda.org"
			     "~/agenda/atcoder.org"
			     "~/agenda/codeforces.org"
			     "~/OpenVMACS/todo.org"
			     "~/agenda/finances.org"
			     "~/agenda/diet.org"))

(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("elsarticle"
                 "\\documentclass{elsarticle}
   [NO-DEFAULT-PACKAGES]
   [PACKAGES]
   [EXTRA]"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("mimosis"
                 "\\documentclass{mimosis}
   [NO-DEFAULT-PACKAGES]
   [PACKAGES]
   [EXTRA]
  \\newcommand{\\mboxparagraph}[1]{\\paragraph{#1}\\mbox{}\\\\}
  \\newcommand{\\mboxsubparagraph}[1]{\\subparagraph{#1}\\mbox{}\\\\}"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\mboxparagraph{%s}" . "\\mboxparagraph*{%s}")
                 ("\\mboxsubparagraph{%s}" . "\\mboxsubparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '( "koma-article"
                  "\\documentclass{scrartcl}"
                  ( "\\section{%s}" . "\\section*{%s}" )
                  ( "\\subsection{%s}" . "\\subsection*{%s}" )
                  ( "\\subsubsection{%s}" . "\\subsubsection*{%s}" )
                  ( "\\paragraph{%s}" . "\\paragraph*{%s}" )
                  ( "\\subparagraph{%s}" . "\\subparagraph*{%s}" )))
  )
  

(column-number-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(ef-cherie))
 '(custom-safe-themes
   '("2224b07a70ad0e4f11eef482f9551efa57d7cc27c943ffd43edd01ed85ed2ebf" "15604b083d03519b0c2ed7b32da6d7b2dc2f6630bef62608def60cdcf9216184" "88cb0f9c0c11dbb4c26a628d35eb9239d1cf580cfd28e332e654e7f58b4e721b" "69f7e8101867cfac410e88140f8c51b4433b93680901bb0b52014144366a08c8" "611ef0918b8b413badb8055089b5499c1d4ac20f1861efba8f3bfcb36ad0a448" "58264887d7ab17702ef85bbd96e11bd7f613622ff9c63990be860b958c978f09" "4b026ac68a1aa4d1a91879b64f54c2490b4ecad8b64de5b1865bca0addd053d9" "21e3d55141186651571241c2ba3c665979d1e886f53b2e52411e9e96659132d4" "3d94d6d1a1c23113a60c8496c9aed094dbc2695f219e8127bb168d17b1e6dab3" "01aef17f41edea53c665cb57320bd80393761f836be5ab0bd53292afc94bd14d" "b0b29575dda28e1948e31f40e7693fa8483d7a9b1b7aff069fa8a1b7193cd1ab" "7ca04d620046f5807d0740f265844d45e53b864138c246f48f663bea8fba5c5d" "ae7aede615d12f126a7b6b0d8c1e0af2af1ab63fb21d80a130a5f701fdbb23fe" "205bb9accecaf0ae5e8cb5f09773be4f1175aca71322ba4fd44b539cd48463b6" "28d5b595e4724ad44b52eb1ab9bd6fbf1cca747109e2dc5ff4073a07d1b50946" "67a0f6cdf628610987cf7f0d38f0ae68ed3a5ab6816ff3da5f66d7b09d03f470" "7819a530936ad2204a35340498da6341f66d816a92b8c71af138f73814b269ec" "91fed8cade0d85d1f5a5621e72ac6e720945be79493465a79f020e673f7e2d24" "65af8e8d704bcd9745a4f191db756995de6b1fdd15cf2eb41befaae75f7b045d" "c49f79bfea991ed384cc0dc33328c8d812c413bf27cff0bc24ad58af2cdbccb4" "65809263a533c5151d522570b419f1a653bfd8fb97e85166cf4278e38c39e00e" "a73cd17e5b490a5558a0ca13186cccb85ff74b2160f77e65ff36024bc66089b4" "4de156ea6aa06640e3d16da41dfbdee85aea2fb969f620e601a982c6e237b396" "02a651e29ca0508056b5ed1cd2075f4da1ae0832635c16a8d2e471eddb8fbcd8" "df42062cdd672acecac9b5a1229c45f74c0cc2bc0362f9ad41054af6ac355021" "7a259016d8fe61ef450895a01d842c4353dabc873ee46e250c933995f7f004cf" "a6a979c8b7ccb1d4536f4fa74a6e47674a3ce65feea3fecdf1d9dc448fac47e0" "7dc1c6210efe106a8c6cd47009a2ffd0069826b550dda379e8e4ef6105384cba" "704f75d46620d87bb246e2ec1abb129437764b0e84ac0fff6b968311cc046918" "c73ce0e82bfbf5f186756001eeaaf26f0b461851a8b421d1ff5ec35e10f300ed" "ca934a76aae4ff950288e082be75a68eb7bac6e8d3dd58b28649993540412ed6" "e546768f3da4b394adc8c460106a7d220af130a3a2a0518d265c832d015a4385" "38cb7d03fec58c860d5e92ee756aa80bdb2d78ef7ac726317e78c5c844e04f3a" "73c55f5fd22b6fd44f1979b6374ca7cc0a1614ee8ca5d4f1366a0f67da255627" "5e05db868f138062a3aedcccefe623eee18ec703ae25d4e5aebd65f892ac5bcc" "5f92b9fc442528b6f106eaefa18bb5e7bfa0d737164e18f1214410fef2a6678d" "8ea6a46120abb34bf6a664b76d78014e0dd1f2b740a0976ec41313612421712f" "46a843168cc83b28b740735516e6eea4f97769d848c79b5acab32f7a278f793a" "7d10494665024176a90895ff7836a8e810d9549a9872c17db8871900add93d5c" default)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; horizontal line cursor and no blink
(set-default 'cursor-type '(hbar . 5))
(blink-cursor-mode 0)

(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; No tooltips
(tooltip-mode 0)

;; Paren mode is part of the theme
(show-paren-mode t)

;; Company
(global-company-mode)

;; Ivy 
(require 'ivy)
(ivy-mode t)
(set-face-attribute 'ivy-current-match nil :background "#ec9c54" :foreground "#741c4c")

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)
   (python . t)
   (emacs-lisp . t)
   (C . t)))

(setq org-plantuml-jar-path
      (expand-file-name "~/Downloads/plantuml.jar"))

(setq scroll-step 1)
(setq scroll-margin 1)

;; avy keybindingp
(global-set-key (kbd "C-:") 'avy-goto-char)

;; Doom modeline
(require 'doom-modeline)
(setq doom-modeline-bar-width 32)
(setq doom-modeline-height 32)
(setq doom-modeline-github t)
(doom-modeline-mode)

;; setting up Iosevka font ligatures
;; set Iosevka font only if it available
(defun rag-set-face (frame)
  "Configure faces on frame creation"
  (select-frame frame)
  (if (display-graphic-p)
      (progn
        (when (member "Iosevka" (font-family-list))
          (progn
            (set-frame-font "Iosevka-11" nil t))))))
(add-hook 'after-make-frame-functions #'rag-set-face)

;; set frame font when running emacs normally
(when (member "Iosevka" (font-family-list))
  (progn
    (set-frame-font "Iosevka-11" nil t)))

;; OpenVMACS
(add-to-list 'load-path "~/OpenVMACS/emacs/")
(require 'openvmacsc)

;; Transparent
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

(transparency 100)

;; Symbol Prettify
(global-prettify-symbols-mode)

;; org-download
(require 'org-download)

;; Git Gutter Fringe
(require 'linum)
(use-package git-gutter
  :ensure t
  :hook (prog-mode . git-gutter-mode)
  :config
  (setq git-gutter:update-interval 0.02))
(use-package git-gutter-fringe
  :ensure t
  :config
  (define-fringe-bitmap 'git-gutter-fr:added [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:modified [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240] nil nil 'bottom))





