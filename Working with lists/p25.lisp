(load "p20.lisp")
(load "p23.lisp")

;;;  Função que gera uma permutação randômica de uma lista  ;;;

(defun rnd-permu (org-list)
  (if (null org-list)
      ()
    (let ((rand-pos (+ (random (length org-list) 1))))
      (cons (element-at org-list rand-pos)
	    (rnd-permu (org-list)))
