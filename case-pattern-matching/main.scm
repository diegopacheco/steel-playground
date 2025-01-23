(define (day-name num)
  (case num
    ((1) "Monday")
    ((2) "Tuesday")
    ((3) "Wednesday")
    (else "Unknown")))
(display (day-name 1))