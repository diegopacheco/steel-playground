(define (memoize f)
  (let ((cache '()))
    (lambda (x)
      (let ((result (assoc x cache)))
        (if result
            (cdr result)
            (let ((value (f x)))
              (set! cache (cons (cons x value) cache))
              value))))))

(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1)) (fib (- n 2)))))

(define fibm (memoize fib))
(display (fibm 20))
(newline)
(display (fibm 20))
(newline)
(display (fibm 20))
(newline)