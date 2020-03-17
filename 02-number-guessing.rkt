#lang racket

(define lower 1)
(define upper 100)

(define (start m n)
  (set! lower (min m n))
  (set! upper (max m n)))

(define (guess)
  (quotient (+ lower upper) 2))

(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))
