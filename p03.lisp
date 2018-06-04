;;; Fun��o que retorna o elemento na K-�sima posi��o de ;;;
;;; uma lista. Se a posi��o desejada eh maior que a     ;;;
;;; �ltima da lista, retorna NIL.                       ;;;

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
