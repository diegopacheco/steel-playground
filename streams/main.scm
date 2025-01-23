(define (enumerate-interval start end)
  (if (> start end)
      '()
      (cons start (enumerate-interval (+ start 1) end))))

(define (prime? n)
  (if (< n 2)
      #f
      (let loop ((i 2))
        (cond ((> (* i i) n) #t)
              ((= (remainder n i) 0) #f)
              (else (loop (+ i 1)))))))

(define result (car (cdr (filter prime?
                  (enumerate-interval 1 100)))))

(display result)