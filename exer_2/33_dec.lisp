(defun raiz (a n)
    (cond
    ((< n 0) nil)                          ; retorna nil se n for negativo
    ((zerop n) 1)                          ; caso base: retorna 1 se n for zero
    (t (/ (+ (raiz a (- n 1)) (/ 3 (raiz a (- n 1)))) 2)))) ; média entre a raiz de (a, n-1) e 3/(raiz de (a, n-1))


(defun testar-precisao-raiz (a max-n tolerancia)
    (loop for n from 1 to max-n
        do (let* ((valor-lisp (raiz a n))
                    (valor-java (java:Math.sqrt a)) ; usando uma biblioteca Java
                    (diferenca (abs (- valor-lisp valor-java))))
                (format t "n: ~d, valor Lisp: ~a, valor Java: ~a, diferença: ~a~%"
                        n valor-lisp valor-java diferenca))
        until (< diferenca tolerancia)))
