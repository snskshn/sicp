;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (my-fast-expt b n)
  (my-fast-expt-iter 1 b n))
(define (my-fast-expt-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (my-fast-expt-iter a (* b b) (/ n 2)))
        (else (my-fast-expt-iter (* a b) b (- n 1)))))