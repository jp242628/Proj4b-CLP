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

(print (produto 5)) ; Imprime o resultado do produto dos 5 primeiros números de Fibonacci