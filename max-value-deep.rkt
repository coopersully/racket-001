#lang racket

(define (findMax lst)
  (cond ((null? lst) #f)
        ((not (pair? lst)) lst)
        (else (let ((max-rest (findMax (cdr lst))))
                (let ((first-max (findMax (car lst))))
                  (cond ((and (number? first-max) (number? max-rest))
                         (if (> first-max max-rest)
                             first-max
                             max-rest))
                        ((number? max-rest) max-rest)
                        ((number? first-max) first-max)
                        (else #f)))))))

(findMax '(1 5 2 9 4))
