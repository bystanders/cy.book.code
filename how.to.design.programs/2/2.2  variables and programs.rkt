;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2.2  variables and programs|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (area-of-disk r)
  (* 3.14 (* r r)))
(define (area-of-ring outer inner)
  (- (area-of-disk outer) (area-of-disk inner)))

;;2.2.1
(define (Fahrenheit->Celsius temperature) 
  (* (- temperature 32) 5/9))

(= (Fahrenheit->Celsius 32)
   0)

(= (Fahrenheit->Celsius 212)
   100)

;;2.2.2
(define (dollar->euro money) 
  (* money 0.76))

(= (dollar->euro 1)
   0.76)

;;2.2.3
(define (triangle side-length height) 
  (* side-length height 1/2))

(= (triangle 1 2)
   1)

;;2.2.4
(define (convert2 a b)
  (+ (* b (expt 10 1)) a))
(define (convert3 a b c) 
  (+ (* c (expt 10 2)) (convert2 a b)))

(= (convert3 1 2 3)
   321)

;;2.2.5
(define (f n)
  (+ (/ n 3) 2))
(define (f1 n)
  (+ (sqr n) 10))
(define (f2 n)
  (+ (* 1/2 (sqr n)) 20))
(define (f3 n)
  (- 2 (/ 1 n)))