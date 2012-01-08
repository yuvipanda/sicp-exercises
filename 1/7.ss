(define (average a b)
  (/ (+ a b) 2))

(define (sqrt-iter guess x) 
  ; Calls improve twice. Should use a local variable here.
  (if (good-enough? (improve guess x) guess)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? this-guess last-guess)
  (< (abs (- this-guess last-guess)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
