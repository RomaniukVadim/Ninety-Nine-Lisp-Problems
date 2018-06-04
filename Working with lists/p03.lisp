;;; Função que retorna o elemento na K-ésima posição de ;;;
;;; uma lista. Se a posição desejada eh maior que a     ;;;
;;; última da lista, retorna NIL.                       ;;;

(defun element-at (org-list pos &optional (ini 1))
    (if (eql ini pos)
        (car org-list)
        (element-at (cdr org-list) pos (+ ini 1))))

;;; Outra solucao

(defun element-at (lista n)
  (if (= n 1)
      ;; o primeiro elemento esta na posicao 1
      (first lista)
    (element-at (rest lista) (1- n))
    )
  )
