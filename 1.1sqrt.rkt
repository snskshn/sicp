;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1.1sqrt) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (my-sqrt x)
  (sqrt-iter 1.0 x))

; change if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; inner definition
(define (my-sqrt-local x)
  (local [
          (define (good-enough? guess)
            (< (abs (- (square guess) x)) 0.001))
          (define (improve guess)
            (average guess (/ x guess)))
          (define (sqrt-iter guess)
            (if (good-enough? guess)
                guess
                (sqrt-iter (improve guess))))
          (define (square x)
            (* x x))
          (define (average x y)
            (/ (+ x y) 2))
          ]
    (sqrt-iter 1.0)))