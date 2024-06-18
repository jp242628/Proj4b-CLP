(defun fibonacci (n)
    (cond
    ((< n 1) nil)             ; retorna nil se n for menor que 1
    ((< n 3) 1)               ; casos base: retorna 1 se n for 1 ou 2
    (t (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))) ; recursão: fibonacci(n-1) + fibonacci(n-2)

(defun produto (n)
    (cond
    ((< n 1) nil)             ; retorna nil se n for menor que 1
    ((< n 3) 1)               ; casos base: retorna 1 se n for 1 ou 2
   (t (* (fibonacci n) (produto (- n 1)))))) ; recursão: fibonacci(n) * produto(n-1)


(defun calcular-produto-ate-n (limite-59-segundos)
    (loop for n from 1
        while (< (get-internal-real-time) (+ *internal-time-units-per-second* limite-59-segundos))
        do (let ((resultado (produto n)))
                (format t "n: ~d, resultado: ~a~%" n resultado))))

(calcular-produto-ate-n 59)
