(define target (+ 1 42))
(display "Guess a number between 1 and 100: ")
(let loop ()
  (let ((guess (read)))
    (cond ((= guess target) (display "Correct!\n"))
          ((< guess target) (begin (display "Too low. Try again: ") (loop)))
          (else (begin (display "Too high. Try again: ") (loop))))))