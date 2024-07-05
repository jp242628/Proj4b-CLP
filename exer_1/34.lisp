(defun seriePI (n)
    (cond
    ((< n 1) nil)                          ; retorna nil se n for menor que 1
    ((eql n 1) 4)                          ; caso base: retorna 4 se n for igual a 1
    ((evenp n) (- (seriePI (- n 1)) (/ 4 (- (* n 2) 1)))) ; se n é par
    (t (+ (seriePI (- n 1)) (/ 4 (- (* n 2) 1))))))       ; se n é ímpar

(print (seriePI 5)) ; Imprime o resultado da função