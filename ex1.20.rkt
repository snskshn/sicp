;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (my-remainder a b)
  (if (= b 0)
      0
      (remainder a b)))

(define (my-gcd a b)
  (new-if (= b 0)
      a
      (my-gcd b (my-remainder a b))))

(require racket/trace)
(trace my-remainder)