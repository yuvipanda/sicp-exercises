;Note that this is same as ex 1.7, with just the improve function modified.
;I'm guessing that was the point of this exercise - see 'generality' in code
;Resisting urge to combine them
(define (cube-iter guess x) 
  (define new-guess (improve guess x))
  (if (good-enough? new-guess guess)
    guess
    (cube-iter new-guess
               x)))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3)) 

(define (good-enough? this-guess last-guess)
  (< (abs (- this-guess last-guess)) 0.001))

(define (cube-root x)
  (cube-iter 1.0 x))
