(define (palindrome? lst)
  (equal? lst (reverse lst)))
(display (palindrome? '(1 2 3 2 1)))