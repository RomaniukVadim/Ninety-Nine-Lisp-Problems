;;;  Função que remove o elemento em uma dada posicação da  ;;;
;;;  lista. Retorna a nova lista sem o elemento em questão  ;;;

(defun remove-at (org-list pos &optional (ini 1))
    (if (eql pos ini)
        (cdr org-list)
        (cons (car org-list) (remove-at (cdr org-list) pos (+ ini 1)))))
