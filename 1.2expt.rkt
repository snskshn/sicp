;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1.2expt) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (my-expt b n)
  (if (= n 0)
      1
      (* b (my-expt b (- n 1)))))

(define (my-expt2 b n)
  (my-expt-iter b n 1))
(define (my-expt-iter b counter product)
  (if (= counter 0)
      product
      (my-expt-iter b
                    (- counter 1)
                    (* b product))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))
(define (square x)
  (* x x))