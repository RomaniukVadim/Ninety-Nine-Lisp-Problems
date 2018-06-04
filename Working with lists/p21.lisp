;;; Fun��o que recebe um elemento, uma lista e uma posi��o ;;;
;;; e retorna uma nova lista que cont�m o elemento na      ;;;
;;; desejada. Se a posi��o pedida � maior que a �ltima da  ;;;
;;; lista, insere no final da lista.                       ;;;

(defun insert-at (elem org-list pos)
    (if (or (eql pos 1) (eql org-list nil))
            (cons elem org-list)
            (cons (car org-list) (insert-at elem (cdr org-list) (- pos 1)))))
