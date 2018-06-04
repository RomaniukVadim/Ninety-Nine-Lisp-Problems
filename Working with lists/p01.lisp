(defun my_last (lista)
  (if (null lista)
      nil
    (if (null (rest lista))
	lista			 ; testa se a lista so tem um elemento
      (my_last (rest lista))		; recursao no resto da lista
      )
    )
  )
