(load "p03.lisp")
(load "p20.lisp")


;;;  Função que recebe uma lista de opções e um número de   ;;;
;;;  elementos a serem sorteados, retornando uma lista com  ;;;
;;;  os elementos que são sorteados. Se o número de         ;;;
;;;  elementos pedidos for maior que o número de elementos  ;;;
;;;  o comportamento é indefinido.                          ;;;

(defun rnd-select (org-list num &optional (selected 0))
    (if (eql num selected)
        nil
        (let ((rand-pos (+ (random (length org-list)) 1)))
           (cons (element-at org-list rand-pos) (rnd-select (remove-at org-list rand-pos) num (+ selected 1))))))
