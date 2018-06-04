;;; Função que gera uma lista contendo todos os inteiros em   ;;;
;;; um dado intervalo. Se o inicio é menor que o final, gera  ;;;
;;; um lista decrescente                                      ;;;

(defun range (ini fim)
    (if (> ini fim)
        ;; Se a lista é de um número maior para um menor ;;
        (if (eql ini fim)
            (cons fim nil)
            (cons ini (range (- ini 1) fim)))
        
        ;; Se a lista é de um número menor para um maior ;;
        (if (eql ini fim)
            (cons fim nil)
            (cons ini (range (+ ini 1) fim)))))
