(defun fatorial (n)
    (cond
    ((< n 0) nil)             ; retorna nil se n for negativo
    ((zerop n) 1)             ; caso base: retorna 1 se n for zero
   (t (* n (fatorial (- n 1)))))) ; recursão: n * fatorial(n-1)

(defun fibonacci (n)
    (cond
    ((< n 1) nil)             ; retorna nil se n for menor que 1
    ((< n 3) 1)               ; casos base: retorna 1 se n for 1 ou 2
    (t (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))) ; recursão: fibonacci(n-1) + fibonacci(n-2)

(defun serieG (n)
    (cond
    ((< n 1) nil)                          ; retorna nil se n for menor que 1
    ((eql n 1) 1)                          ; caso base: retorna 1 se n for igual a 1
    ((evenp n) (- (serieG (- n 1)) (/ n (fatorial (fibonacci n))))) ; se n é par
    (t (+ (serieG (- n 1)) (/ n (fatorial (fibonacci n)))))))       ; se n é ímpar
