(defun raiz (a n)
    (cond
    ((< n 0) nil)                          ; retorna nil se n for negativo
    ((zerop n) 1)                          ; caso base: retorna 1 se n for zero
    (t (/ (+ (raiz a (- n 1)) (/ 3 (raiz a (- n 1)))) 2)))) ; média entre a raiz de (a, n-1) e 3/(raiz de (a, n-1))

(format t "Para A=3 e n=5: ~d~%" (raiz 3 5))