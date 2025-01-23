(define (square x) (* x x))
(define expr '(square 5))

(define result (eval expr))

(display "Eval result: ")
(display result)
(newline)

(display "Apply result: ")
(display (apply + '(1 2 3 4)))
(newline)