;; Remover boas vindas
(setq inhibit-splash-screen t)

;; Remover menus
;;(tool-bar-mode -1)
;;(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Numeros nas linhas
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 120)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ; Desabilitar inicio de ativação

;; MELPA - Repositório
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize); Iniciar pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Pacotes instalados
(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("C-\\" . 'neotree-toggle))) ;bind para abri menu
(use-package all-the-icons
  :ensure t)
;; - split horizontal
;; | split vertical

;; https://ergoemacs.github.io/
(use-package ergoemacs-mode
  :ensure t
  :config
  (progn
    (setq ergoemacs-theme nil)
    (setq ergoemacs-keyboard-layout "us")
    (ergoemacs-mode 1)))

(use-package ace-window
  :ensure t
  :bind(("C-x o" . ace-window)))
;; X = deltar
;; M = mover
;; C = copiar
;; V = split vertical
;; B = split horizontal


;; Atalhos criados
(global-set-key (kbd "C-<tab>") 'other-window)

;; M = alt
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons neotree  auto-complete which-key try use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disable nil)
(put 'scroll-left 'disabled nil)
