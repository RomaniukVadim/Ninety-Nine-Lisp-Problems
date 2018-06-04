(load "p03.lisp")
(load "p20.lisp")


;;;  Fun��o que recebe uma lista de op��es e um n�mero de   ;;;
;;;  elementos a serem sorteados, retornando uma lista com  ;;;
;;;  os elementos que s�o sorteados. Se o n�mero de         ;;;
;;;  elementos pedidos for maior que o n�mero de elementos  ;;;
;;;  o comportamento � indefinido.                          ;;;

(defun rnd-select (org-list num &optional (selected 0))
    (if (eql num selected)
        nil
        (let ((rand-pos (+ (random (length org-list)) 1)))
           (cons (element-at org-list rand-pos) (rnd-select (remove-at org-list rand-pos) num (+ selected 1))))))
