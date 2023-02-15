#lang racket

(define (findMax lst)
  (cond ((null? lst) #f)
        ((null? (cdr lst)) (car lst))
        (else (let ((max-rest (findMax (cdr lst))))
                (if (> (car lst) max-rest)
                    (car lst)
                    max-rest)))))

(findMax '(1 5 2 9 4))
