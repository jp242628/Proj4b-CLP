(defun fatorial (n)
    (cond
    ((< n 0) nil)             ; retorna nil se n for negativo
    ((zerop n) 1)             ; caso base: retorna 1 se n for zero
   (t (* n (fatorial (- n 1)))))) ; recursão: n * fatorial(n-1)

(defun potencia (b e)
    (cond
    ((< e 0) nil)             ; retorna nil se e for negativo
    ((zerop e) 1)             ; caso base: retorna 1 se e for zero
   (t (* b (potencia b (- e 1)))))) ; recursão: b * potencia(b, e-1)

(defun serieH (n)
    (cond
    ((< n 1) nil)                          ; retorna nil se n for menor que 1
    ((eql n 1) 1)                          ; caso base: retorna 1 se n for igual a 1
    ((evenp n) (- (serieH (- n 1)) (/ (potencia n n) (fatorial n)))) ; se n é par
    (t (+ (serieH (- n 1)) (/ (potencia n n) (fatorial n))))))       ; se n é ímpar
   
    (print (serieH 7)) ; Imprime o resultado