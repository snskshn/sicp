;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (plus-recursive a b)
  (if (= a 0)
      b
      (inc (plus-recursive (dec a) b))))

(define (plus-iterative a b)
  (if (= a 0)
      b
      (plus-iterative (dec a) (inc b))))

(define (inc a)
  (+ a 1))
(define (dec a)
  (- a 1))