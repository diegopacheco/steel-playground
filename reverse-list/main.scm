(define (reverse lst)
  (if (null? lst)
      '()
      (append (reverse (cdr lst)) (list (car lst)))))
(display (reverse (list 1 2 3 4 5 6)))      