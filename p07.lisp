;;;  Recebe uma lista e retorna uma lista que, no lugar dos     ;;;
;;;  elementos que são sub-listas, possui os elementos dessas   ;;;
;;;  sub-listas, recursivamente.                                ;;;

(defun flatten (orig-list)
    (if (eql orig-list nil)
        nil
        (let ((elem (car orig-list)) (resto-list (cdr orig-list)))
            (if (listp elem)
                (append (flatten elem) (flatten resto-list))
                (append (cons elem nil) (flatten resto-list))))))

