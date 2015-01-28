;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4.3  conditionals and conditional functions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (cond1 n)
  (cond
    [(< n 10) 5.0]
    [(< n 20) 5]
    [(< n 30) true]))
(define (cond2 n)
  (cond
    ((< n 10) 5.0)
    ((< n 20) 5)
    ((< n 30) true)))

(define (cond3 n)
  (cond
    [(<= n 1000) .040]
    [(<= n 5000) .045]
    [(<= n 10000) .055]
    [(> n 10000) .060]))

(define (cond4 n)
  (cond
    [(<= n 1000) .040]
    [(<= n 5000) .045]
    [(<= n 10000) .055]
    [else .060]))
;;4.3.3
(define (cond5 n)
  (cond
    [(<= n 1000) (* .040 1000)]
    [(<= n 5000) (+ (* 1000 .040)
                    (* (- n 1000) .045))]
    [else (+ (* 1000 .040)
             (* 4000 .045)
             (* (- n 10000) .055))]))

;; interest-rate : number  ->  number
;; to determine the interest rate for the given amount
(define (interest-rate amount) 
  (cond
    [(<= amount 1000) 0.040]
    [(<= amount 5000) 0.045]
    [else 0.050]))

(= (interest-rate 1000) .040)
(= (interest-rate 5000) .045)
(= (interest-rate 8000) .050)

(define (cond6 n)
  (cond
    [true 5]
    [1 2]))

(define (positive-? n)
  (cond
    [(> n 0) true]))