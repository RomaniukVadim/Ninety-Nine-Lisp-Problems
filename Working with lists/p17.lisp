;;;  Função que recebe uma lista e uma posição e retorna  ;;;
;;;  outra lista contendo os elementos ate e inclusive    ;;;
;;;  posicao indicada.                                    ;;;

(defun split (pos org-list &optional (ini 0))
    (if (> pos ini)
        (cons (car org-list) (split pos (cdr org-list) (+ ini 1)))))


;;;  Função que recebe uma lista e uma posição e retorna  ;;;
;;;  outra lista contendo os elementos apos a posicao     ;;;
;;;  indicada.                                            ;;;

(defun split-after (pos org-list &optional (ini 0))
    (if (> pos ini)
        (split-after pos (cdr org-list) (+ ini 1))
        org-list))
