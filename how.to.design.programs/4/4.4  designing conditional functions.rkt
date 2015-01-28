;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4.4  designing conditional functions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
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

;;4.4.1
(define (interest amount)
  (* amount 
     (interest-rate amount)))

(= (interest 1000) 40)
(= (interest 5000) 225)
(= (interest 8000) 400)

;;4.4.2
(define (tax-rate gross-pay)
  (cond
    [(<= gross-pay 240) 0.0]
    [(<= gross-pay 480) 0.15]
    [else 0.28]))
(define (tax gross-pay)
  (* gross-pay (tax-rate gross-pay)))

(= (tax 240) 0)
(= (tax 480) (* 480 0.15))
(= (tax 500) (* 500 0.28))

(define (gross-pay hour)
  (* 12 hour))
(define (netpay hour)
  (- (gross-pay hour)
     (tax (gross-pay hour))))

(= (netpay 20) (- (* 12 20) 0))
(= (netpay 40) (- (* 12 40) (* (* 12 40) 0.15)))
(= (netpay 50) (- (* 12 50) (* (* 12 50) 0.28)))

;;4.4.3
(define LEVEL1 500)
(define LEVEL2 1000)
(define LEVEL3 1000)
(define (pay-back-rate amount)
  (cond
    [(<= amount LEVEL1) (* 0.25 1/100)]
    [(<= amount (+ LEVEL1 LEVEL2)) (* 0.50 1/100)]
    [(<= amount (+ LEVEL1 LEVEL2 LEVEL3)) (* 0.75 1/100)]
    [else (* 1.0 1/100)]))
(define (pay-back1 charge)
  (cond
    [(<= charge LEVEL1) 
     (* charge (pay-back-rate charge))]
    [(<= charge (+ LEVEL1 LEVEL2)) 
     (+ (* LEVEL1 (pay-back-rate LEVEL1)) 
        (* (- charge LEVEL1) (pay-back-rate charge)))]
    [(<= charge (+ LEVEL1 LEVEL2 LEVEL3)) 
     (+ (* LEVEL1 (pay-back-rate LEVEL1)) 
        (* LEVEL2 (pay-back-rate (+ LEVEL1 LEVEL2))) 
        (* (- charge LEVEL1 LEVEL2) (pay-back-rate charge)))]
    [else 
     (+ (* LEVEL1 (pay-back-rate LEVEL1)) 
        (* LEVEL2 (pay-back-rate (+ LEVEL1 LEVEL2))) 
        (* LEVEL3 (pay-back-rate (+ LEVEL1 LEVEL2 LEVEL3))) 
        (* (- charge LEVEL1 LEVEL2 LEVEL3) (pay-back-rate charge)))]))

(= (pay-back1 400) 
   (* 0.25 1/100 400))
(= (pay-back1 1400) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 900)))
(= (pay-back1 2000) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 500)))
(= (pay-back1 2600) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 LEVEL3)
      (* 1.00 1/100 100)))
;;recursion
(define (pay-back2 charge)
  (cond
    [(<= charge LEVEL1) 
     (* charge (pay-back-rate charge))]
    [(<= charge (+ LEVEL1 LEVEL2)) 
     (+ (pay-back2 LEVEL1) 
        (* (- charge LEVEL1) (pay-back-rate charge)))]
    [(<= charge (+ LEVEL1 LEVEL2 LEVEL3)) 
     (+ (pay-back2 (+ LEVEL1 LEVEL2)) 
        (* (- charge LEVEL1 LEVEL2) (pay-back-rate charge)))]
    [else 
     (+ (pay-back2 (+ LEVEL1 LEVEL2 LEVEL3)) 
             (* (- charge LEVEL1 LEVEL2 LEVEL3) (pay-back-rate charge)))]))

(= (pay-back2 400) 
   (* 0.25 1/100 400))
(= (pay-back2 1400) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 900)))
(= (pay-back2 2000) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 500)))
(= (pay-back2 2600) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 LEVEL3)
      (* 1.00 1/100 100)))
;;final
(define (pay-back-multiply charge level) 
  (* (- charge level) (pay-back-rate charge)))
(define (pay-back-plus charge level) 
  (+ (pay-back3 level) 
     (pay-back-multiply charge level)))
(define (pay-back3 charge)
  (cond
    [(<= charge LEVEL1) 
     (pay-back-multiply charge 0)]
    [(<= charge (+ LEVEL1 LEVEL2)) 
     (pay-back-plus charge LEVEL1)]
    [(<= charge (+ LEVEL1 LEVEL2 LEVEL3)) 
     (pay-back-plus charge (+ LEVEL1 LEVEL2))]
    [else 
     (pay-back-plus charge (+ LEVEL1 LEVEL2 LEVEL3))]))

(= (pay-back3 400) 
   (* 0.25 1/100 400))
(= (pay-back3 1400) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 900)))
(= (pay-back3 2000) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 500)))
(= (pay-back3 2600) 
   (+ (* 0.25 1/100 LEVEL1)
      (* 0.50 1/100 LEVEL2)
      (* 0.75 1/100 LEVEL3)
      (* 1.00 1/100 100)))

;;4.4.4
(define (how-many a b c)
  (cond
    [(< (sqr b) (* 4 a c)) 0]
    [(= (sqr b) (* 4 a c)) 1]
    [(> (sqr b) (* 4 a c)) 2]))

(= (how-many 1 0 -1) 2)
(= (how-many 2 4 2) 1)