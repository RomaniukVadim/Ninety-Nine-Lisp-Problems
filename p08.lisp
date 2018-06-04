(defun compress (lista)
  (cond
   ((null lista) nil)
   ((null (cdr lista)) lista)
   ;; se o primeiro elemento (de lista) e' igual ao consecutivo
   ;; (primeiro do resto)
   ((eql (first lista) (first (rest lista)))
    ;; entao ignora-se o primeiro da lista e continua recursivamente no resto
    (compress (rest lista)))
   (t (cons (first lista) (compress (rest lista))))
   )
  )
