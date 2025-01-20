;; Accepts lists
(display (transduce (list 1 2 3 4 5) (mapping (lambda (x) (+ x 1))) (into-list))) ;; => '(2 3 4 5 6)

;; Accepts vectors
(display (transduce (vector 1 2 3 4 5) (mapping (lambda (x) (+ x 1))) (into-vector))) ;; '#(2 3 4 5 6)

;; Even accepts streams!
(define (integers n)
    (stream-cons n (lambda () (integers (+ 1 n)))))

(display (transduce (integers 0) (taking 5) (into-list))) ;; => '(0 1 2 3 4)