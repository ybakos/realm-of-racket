#lang racket

(define lower 1)
(define upper 100)
(define (guess)
  (quotient (+ lower upper) 2))
