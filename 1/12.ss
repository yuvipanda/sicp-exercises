; Doesn't actually  print them out, since I dunno how to do IO yet :D
(define (pascal index  level)
  (if (or (= 1 index) (<= level index)) 
    1
    (+ (pascal (- index 1) (- level 1))
       (pascal index (- level 1))
       )))
