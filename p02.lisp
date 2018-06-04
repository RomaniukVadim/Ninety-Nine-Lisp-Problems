(defun penultimo (lista)
  (let ((reverso (reverse lista)))	; coloca na variavel reverso o
					; reverse de lista
    (cond
     ((null reverso) nil)
     ;; se a lista tem 2 ou menos elementos, retorno a propria
     ((<= (length reverso) 2)  lista)
     ;; se tiver mais de 2 elementos, construo uma lista
     (t (list (second reverso) (first reverso)))
     )
    )
  )
