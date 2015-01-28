;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4.1  booleans and relations|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;4.1.1
(and (> 4 3) (<= 10 100))

(or (> 4 3) (= 10 100))

(not (= 2 3))

;;4.1.2
(define x 7/2)
(> x 3)
(and (> 4 x) (> x 3))
(= (* x x) x)