;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.18) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (russian-peasant a b)
  (fast-my*-iter a b a))
(define (fast-my*-iter a b product)
  (cond ((= b 1) product)
        ((even? b) (fast-my*-iter (double a) (halve b) (+ a product)))
        (else (fast-my*-iter a (- b 1) (+ a product)))))
(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))