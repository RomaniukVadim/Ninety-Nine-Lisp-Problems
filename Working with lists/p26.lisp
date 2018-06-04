(load "p17.lisp")


;;;  Fun��o que recebe uma lista L1 e o n�mero de elementos (NE)  ;;;
;;;  e retorna uma lista com todas as combina��es de L1, NE a NE          ;;;

(defun combination (n-elem org-list)
    (let ((num-elem (- n-elem 1)))
        (if (or (> num-elem (length org-list)) (< n-elem 2))
            nil
            (let ( (elem-list (split num-elem org-list)) (rest-list (split-after num-elem org-list)))
                (append (combination-lista-elem elem-list rest-list) (combination n-elem (cdr org-list)))))))


;;;  Fun��o auxiliar respons�vel por criar combina��es de uma lista  ;;;
;;;  com todos os elementos de outra.                                ;;;

(defun combination-lista-elem (elem-list org-list)
    (if (eql org-list nil)
        nil
        (append (list (append elem-list (list (car org-list)))) (combination-lista-elem elem-list (cdr org-list)))))

