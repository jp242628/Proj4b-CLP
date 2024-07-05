(defun seriePI (n)
    (cond
    ((< n 1) nil)                          ; retorna nil se n for menor que 1
    ((eql n 1) 4)                          ; caso base: retorna 4 se n for igual a 1
    ((evenp n) (- (seriePI (- n 1)) (/ 4 (- (* n 2) 1)))) ; se n é par
    (t (+ (seriePI (- n 1)) (/ 4 (- (* n 2) 1))))))       ; se n é ímpar


(defun testar-precisao-seriePI (max-n tolerancia)
    (loop for n from 1 to max-n
        do (let* ((valor-lisp (seriePI n))
                    (valor-java java:Math.PI) ; usando uma biblioteca Java
                    (diferenca (abs (- valor-lisp valor-java))))
                (format t "n: ~d, valor Lisp: ~a, valor Java: ~a, diferença: ~a~%"
                        n valor-lisp valor-java diferenca))
        until (< diferenca tolerancia)))
