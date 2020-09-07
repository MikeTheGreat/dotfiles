(defgroup PGN nil
  "Minor mode for PGN (Portable Game Notation) for chess"
  :link '(url-link :tag "Wikipedia Page on PGN" "https://en.wikipedia.org/wiki/Portable_Game_Notation"))

(defface pgn-number-face
  `((t (:foreground "LightGoldenrodYellow")))
  "Face for the number of each turn in a PGN file"
  :group 'PGN)
(defvar pgn-number-face 'pgn-number-face
  "Variable for face `pgn-number-face" )

(defface pgn-piece-taken-face
  `((t (:foreground "red")))
  "Face for when a piece is taken"
  :group 'PGN)
(defvar pgn-piece-taken-face 'pgn-piece-taken-face
  "Variable for face `pgn-number-face" )

(defface pgn-piece-face
  `((t (:foreground "SkyBlue")))
  "Face for the piece (N = knight, etc)"
  :group 'PGN)
(defvar pgn-piece-face 'pgn-piece-face
  "Variable for face `pgn-piece-face" )

(defface pgn-move-face
  `((t (:foreground "SpringGreen")))
  "Face for the piece (N = knight, etc)"
  :group 'PGN)
(defvar pgn-move-face 'pgn-move-face
  "Variable for face `pgn-move-face" )

(defvar pgn-mode-syntax-table nil "Syntax table for `pgn-mode'.")

(setq pgn-mode-syntax-table
      (let ( (synTable (make-syntax-table)))
        ;; PGN style comment “; …”
	(modify-syntax-entry ?\; "<" synTable)
	(modify-syntax-entry ?\n ">" synTable)
	;; PGN style comment: { ... }
        (modify-syntax-entry ?{ "<}" synTable)
        (modify-syntax-entry ?} ">{" synTable)
	;; (modify-syntax-entry ?{ "<" synTable) }
	;; (mod }ify-syntax-entry ?} "<" synTable)
	;; From that one website:
	(modify-syntax-entry ?% "<" synTable)
	synTable))

(define-derived-mode pgn-mode fundamental-mode "PGN"
  "Major mode for editing PGN code."
  (setq font-lock-defaults (list nil)))

(font-lock-add-keywords 'pgn-mode
			'(
			  ("[^\\[][KQRBN]\\([xX]\\)[abcdefgh]"  1 pgn-piece-taken-face )
			  ("[^\\[]\\([KQRBN]\\)[abcdefghxX]"  1 pgn-piece-face )
			  ("\\([abcdefgh][0-9]\\)"  1 pgn-move-face )
			  ("[0-9]+\\." . pgn-number-face)

			  ) )

(provide 'pgn-mode)

;; (define-derived-mode pgn-mode prog-mode "pgn"
;;   "pgn-mode is a major mode for editing language pgn."
;;   (setq font-lock-defaults (list nil)))
