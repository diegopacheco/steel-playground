;; Simple flat contracts
(define/contract (test x y)
    (->/c even? even? odd?)
    (+ x y 1))

(test 2 2) ;; => 5

(define/contract (test-violation x y)
    (->/c even? even? odd?)
    (+ x y 1))

(test-violation 1 2) ;; contract violation