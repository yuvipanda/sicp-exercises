; Define proc to take 3 args. Return sum of 2 largest numbers' squares.

(define (largest x y)
  (if (> x  y) 
    x
    y))

(define (square x)
  (* x x))

(define (squares-of-largest-two a b c) 
  (+ (square (largest a b)) (square (largest b c))))

(squares-of-largest-two 4 5 6)
