#lang racket

(define lower 1)
(define upper 100)
(define (guess)
  (quotient (+ lower upper) 2))
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))