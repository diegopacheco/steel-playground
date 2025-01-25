(define (node-value node)
  (car node))

(define (node-left node)
  (cadr node))

(define (node-right node)
  (caddr node))

(define (make-node value left right)
  (list value left right))

(define (insert tree value)
  (if (null? tree)
      (make-node value '() '())
      (let ((node-value (node-value tree)))
        (if (< value node-value)
            (make-node node-value (insert (node-left tree) value) (node-right tree))
            (make-node node-value (node-left tree) (insert (node-right tree) value))))))

(define (search tree value)
  (if (null? tree)
      #f
      (let ((node-value (node-value tree)))
        (cond ((= value node-value) #t)
              ((< value node-value) (search (node-left tree) value))
              (else (search (node-right tree) value))))))

(define my-tree (insert '() 5))
(set! my-tree (insert my-tree 3))
(set! my-tree (insert my-tree 7))
(set! my-tree (insert my-tree 2))
(set! my-tree (insert my-tree 4))
(display (search my-tree 4))  ;; Should display #t
(newline)
(display (search my-tree 6))  ;; Should display #f