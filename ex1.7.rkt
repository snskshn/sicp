;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1.7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (my-sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough-diff? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; compare with prev guess
(define (good-enough-diff? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (square x) (* x x))


; change if: cannot use with recursion because compiler uses lazy evaluation.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))