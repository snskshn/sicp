;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (answer a b c)
  (cond ((and (>= b a) (>= c a)) (sum-of-squares b c))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))
        ((and (>= a c) (>= b c)) (sum-of-squares a b))))
        