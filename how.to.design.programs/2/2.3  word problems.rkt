;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2.3  word problems|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (wage h)
  (* 12 h))

;;2.3.1
(define (tax pay)
  (* 15/100 pay))
(define (netpay h)
  (- (wage h) (tax (wage h))))

;;2.3.2
(define (sum-coins penny nickel dime quarter)
  (+ (* 1/100 penny) (* 5/100 nickel) (* 1/10 dime) (* 1/4 quarter)))

;;2.3.3
(define (total-profit num)
  (- (* 5 num) 20 (* 0.5 num)))