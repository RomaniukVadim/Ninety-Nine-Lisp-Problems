(load "p07.lisp")
(load "p26.lisp")


;;;   Subtrai o conjunto B do conjunto A e eetorna S = A - B   ;;;

(defun remove-lista (orig-list elem-list)
    (if (eql elem-list nil)
        orig-list
        (remove-lista (remove (car elem-list) orig-list) (cdr elem-list))))


;;;   Função auxiliar que retorna um conjunto de todas as combinações   ;;;
;;;   num-elem a num-elem de orig-list que não contenham nenhum dos     ;;;
;;;   elementos presentes em res-parc.                                  ;;;

(defun group-n (num-elem res-parc orig-list)
    (combination-lista-elem res-parc (combination num-elem (remove-lista orig-list (flatten res-parc)))))


(defun group-n-list (num-elem res-parc-list orig-list)
    (if (eql res-parc-list nil)
        nil
        (let ((res-parc (car res-parc-list)) (resto (cdr res-parc-list)))
            (append (group-n num-elem res-parc orig-list) (group-n-list num-elem resto orig-list)))))


(defun group3 (orig)
    (group-n-list 5 (group-n-list 2 (group-n 2 nil orig) orig) orig))


(defun group (orig-list elem-list)
    (if (eql (cdr elem-list) nil)
        (group-n (car elem-list) nil orig-list)
        (let ((elem-list (reverse elem-list)))
            (group-n-list (car elem-list) (group orig-list (reverse (cdr elem-list))) orig-list))))



