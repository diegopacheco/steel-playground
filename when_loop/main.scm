(define (display-chars s)
  (let ((n (string-length s)))
    (let loop ((i 0))
      (when (< i n)
        (display (string-ref s i))
        (newline)
        (loop (+ i 1))))))

(display-chars "hello")