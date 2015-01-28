;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3.1  composing functions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; to compute the profit as the difference between revenue and costs
(define (profit ticket-price)
  (- (revenue ticket-price) 
     (cost ticket-price)))

;; to compute the revenue
(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

;; to compute the costs
(define (cost ticket-price)
  (+ 180 
     (* 0.04 (attendees ticket-price))))

(define ATTEND-INCREASE (/ 15 0.1))

;; to compute the number of attendees
(define (attendees ticket-price)
  (+ 120 
     (* ATTEND-INCREASE (- 5 ticket-price))))

;;3.1.1
(attendees 5) "=" 120
(attendees 4.9) "=" (+ 120 15)

(attendees 4) "=" (+ 120 (* 15 10))
(attendees 3) "=" (+ 120 (* 15 20))

(profit 5)
(profit 4)
(profit 3)

;;3.1.4
;; to compute the costs
(define (cost2 ticket-price)
  (* 1.5 (attendees ticket-price)))

;; to compute the profit as the difference between revenue and costs
(define (profit2 ticket-price)
  (- (revenue ticket-price) 
     (cost2 ticket-price)))

(profit2 5)
(profit2 4)
(profit2 3)