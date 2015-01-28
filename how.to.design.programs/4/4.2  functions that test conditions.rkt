;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4.2  functions that test conditions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;4.2.1
(define (is-between-3-7-within-7? n)
  (and (< 3 n) (<= n 7)))

(define (is-between-3-7-within? n)
  (and (<= 3 n) (<= n 7)))

(define (is-between-3-9-within-3? n)
  (and (<= 3 n) (< n 9)))

(define (union-1-3-and-9-11? n)
  (or (and (< 1 n) (< n 3))
      (and (< 9 n) (< n 11))))

(define (range-outside-1-3? n)
  (or (< n 1) (> n 3)))

;;4.2.2
(define (in-interval-1? x)
  (and (< -3 x) (< x 0)))

(define (in-interval-2? x)
  (or (< x 1) (> x 2)))

(define (in-interval-3? x)
  (not (and (<= 1 x) (<= x 5))))

(in-interval-1? -2)
(in-interval-2? -2)
(in-interval-3? -2)

;;4.2.3
(define (equation x)
  (= (+ (* x x) (* 2 x) 1) 0))

(define (equation1 n)
  (= (+ (* 4 n) 2) 62))

(define (equation2 n)
  (= (* 2 n n) 102))

(define (equation3 n)
  (= (+ (* 4 n n)
        (* 6 n)
        2)
     462))

(equation1 10)
(equation1 12)
(equation1 14)
(equation2 10)
(equation2 12)
(equation2 14)
(equation3 10)
(equation3 12)
(equation3 14)