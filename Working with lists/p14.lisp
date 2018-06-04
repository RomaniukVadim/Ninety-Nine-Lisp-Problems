(defun dupli (lista)
    (if (eql lista nil)
        nil
    (append (list (car lista) (car lista)) ( dupli (cdr lista)))
    )
)

(dupli '(1 2 3 4 5 6 7 8))