#lang racket

(define (sortLessThan a b)
  (< (string-length a) (string-length b)))

(sort '("apple" "banana" "cherry" "date") sortLessThan)
