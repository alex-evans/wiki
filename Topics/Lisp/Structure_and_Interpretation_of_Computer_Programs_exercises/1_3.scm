; Exercise 1.3
(define (square x) (* x x))

(define (sum-squares a b) (+ (square a) (square b)))

(define (sum-of-two-larger-square x y z)
    (cond 
        ((and (>= x z) (>= y z)) (sum-squares x y))
        ((and (>= y x) (>= z x)) (sum-squares y z))
        ((and (>= x y) (>= z y)) (sum-squares x z))
    )
)

(sum-of-two-larger-square 1 2 3)