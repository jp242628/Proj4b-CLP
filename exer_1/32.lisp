(defun factorial (n)
    (cond
    ((< n 0) nil)             ; retorna nil se n for negativo
    ((zerop n) 1)             ; caso base: retorna 1 se n for zero
   (t (* n (factorial (- n 1)))))) ; recursão: n * factorial(n-1)

(defun power (b e)
    (cond
    ((< e 0) nil)             ; retorna nil se e for negativo
    ((zerop e) 1)             ; caso base: retorna 1 se e for zero
   (t (* b (power b (- e 1)))))) ; recursão: b * power(b, e-1)

(defun ex (x n)
    (cond
    ((< n 0) nil)             ; retorna nil se n for negativo
    ((zerop n) 1)             ; caso base: retorna 1 se n for zero
    (t (+ (/ (power x n) (factorial n)) (ex x (- n 1)))))) ; recursão: power(x, n)/factorial(n) + ex(x, n-1)
