(defun inverte (lista)
  (inverte-aux lista () )
  )

(defun inverte-aux (lista resto)
  (if (null lista)
      resto
    (inverte-aux (rest lista) (cons (first lista) resto) )
    )
  )
