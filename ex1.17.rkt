;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.17) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (my* a b)
  (if (= b 0)
      0
      (+ a (my* a (- b 1)))))

(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))

(define (fast-my* a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-my* a (halve b))))
        (else (+ a (fast-my* a (- b 1))))))