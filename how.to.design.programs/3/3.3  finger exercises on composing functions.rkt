;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3.3  finger exercises on composing functions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;3.3.1
(define INCHES2CM 2.54)
(define (inches->cm x)
  (* INCHES2CM x))

(define FEET2INCHES 12)
(define (feet->inches x)
  (* FEET2INCHES x))

(define YARDS2FEET 3)
(define (yards->feet x)
  (* YARDS2FEET x))

(define RODS2YARDS (+ 5 1/2))
(define (rods->yards x)
  (* RODS2YARDS x))

(define FURLONGS2RODS 40)
(define (furlongs->rods x)
  (* FURLONGS2RODS x))

(define MILES2FURLONGS 8)
(define (miles->furlongs x)
  (* MILES2FURLONGS x))

(define (feet->cm x)
  (inches->cm (feet->inches x)))

(define (yards->cm x)
  (feet->cm (yards->feet x)))

(define (rods->inches x)
  (feet->inches (yards->feet (rods->yards x))))

(define (miles-feet x)
  (yards->feet (rods->yards (furlongs->rods (miles->furlongs x)))))

;;3.3.2
(define PI 3.14)
(define (volume-cylinder radius height)
  (* PI (sqr radius) height))

;;3.3.3
(define (area-cylinder radius height)
  (+ (* 2 PI (sqr radius))
     (* 2 PI radius height)))

;;3.3.4
(define (area-pipe inner-radius length thickness)
  (- (area-cylinder (+ inner-radius thickness) length)
     (area-cylinder inner-radius length)))

;;3.3.5
(define g 9.8)
(define (height t)
  (* 1/2 (v g t) t))
(define (v g t)
  (* g t))

;;3.3.6
(define (Fahrenheit->Celsius temperature) 
  (* (- temperature 32) 5/9))
(define (Celsius->Fahrenheit temperature) 
  (+ (/ temperature 5/9) 32))
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))
(I 40)

(define (feet->yards f)
  ...)