;;;  Retorna uma lista ordenada de acordo com o tamanho das sublistas  ;;;
(defun lsort (orig-list)
    (sort orig-list #'> :key #'length))


;;;  Retorna uma nova lista, com elementos da forma (N ELEM), onde    ;;;
;;;  N é a freqüencia do tamanho da lista ELEM e ELEM é uma sublista  ;;;
;;;  original.                                                        ;;;
(defun lfmark (rest-list &optional (orig-list rest-list))
    (if (eql rest-list nil)
        nil
        (cons (list (lfreq orig-list (length (car rest-list))) (car rest-list)) (lfmark (cdr rest-list) orig-list))))


;;;  Recebe uma lista com elementos da forma (CHAVE ELEM) e retoran uma nova   ;;;
;;;  lista sem as chaves ELEM                                                  ;;;
(defun lfunmark (orig-list)
    (if (eql orig-list nil)
        nil
        (cons (second (car orig-list)) (lfunmark (cdr orig-list)))))


;;;  Conta o número de listas com tamanho e-length na orig-list  ;;;
(defun lfreq (orig-list e-length)
    (if (eql orig-list nil)
        0
        (if (eql (length (car orig-list)) e-length)
            (+ (lfreq (cdr orig-list) e-length) 1)
            (lfreq (cdr orig-list) e-length))))


;;;  Retorna uma lista ordenada pela freqüencia de suas sublistas  ;;;
(defun lfsort (orig-list)
    (let ((marked-list (lfmark orig-list)))
        (lfunmark (sort marked-list #'> :key #'(lambda (x) (car x))))))

