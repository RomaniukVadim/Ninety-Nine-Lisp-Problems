;;; Função que recebe um elemento, uma lista e uma posição ;;;
;;; e retorna uma nova lista que contém o elemento na      ;;;
;;; desejada. Se a posição pedida é maior que a última da  ;;;
;;; lista, insere no final da lista.                       ;;;

(defun insert-at (elem org-list pos)
    (if (or (eql pos 1) (eql org-list nil))
            (cons elem org-list)
            (cons (car org-list) (insert-at elem (cdr org-list) (- pos 1)))))
