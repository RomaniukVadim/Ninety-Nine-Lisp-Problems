(defun comprimento (lista)
  (if (null lista)
      0
    (1+ (comprimento (rest lista)))))
