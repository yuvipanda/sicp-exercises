; f(n) = n if n < 3 and f(n) = f(n-1) + 2f(n-2) + 3f(n-3) of n >= 3

; Recursive way
(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))

; Iterative way
(define (f n)
  (define (f-iterative n x fn-1 fn-2 fn-3)
    (if (< n x)
      fn-1
      (if (< x 3)
        (f-iterative n (+ x 1) x fn-1 fn-2)
        (f-iterative n (+ x 1) (+ fn-1 (* 2 fn-2) (* 3 fn-3)) fn-1 fn-2)
        )
      )
    )
  (f-iterative n 1 0 0 0))


