(load "p22.lisp")
(load "p23.lisp")


;;;  Junta duas outras funções para produzir o resultado desejado  ;;;

(defun lotto-select (num-elem max-elem)
    (rnd-select (range 1 max-elem) num-elem))
