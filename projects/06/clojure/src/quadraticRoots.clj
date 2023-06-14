;;;; quadraticRoots.clj computes the roots of a quadratic equation.
;;;;
;;;; Input: a, b, c, the three factors that are ints.
;;;; Output: root1, root2, the two roots that are ints.
;;;;
;;;; Usage: clojure -m quadraticRoots
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 20, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadraticRoots)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; quadraticRoots() computes the roots of a quadratic equation.
;;; Receive: a, b, c, the three factors.
;;; Return: root1, root2, the two roots.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn quadraticRoots [a b c]
    (let [arg (- (Math/pow b 2) (* 4 a c))]
        (if (and (not= a 0) (>= arg 0))     ; check if a is not 0 and b^2-4ac is greater than 0.
            (let [root1 (/ (+ (- 0 b) (Math/sqrt arg)) (* 2 a)) root2 (/ (- (- 0 b) (Math/sqrt arg)) (* 2 a))]
                 (vector root1 root2)       ; if so, compute the roots and put them into a vector to return.
            )
            (vector 0 0)                    ; if not, return 0 for both roots.
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: a, b, c, the three factors.
;;; Output: root1, root2, the two roots.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "Enter the value of a: ") (flush)
  (let
    [ A (read) ]                      ; read the value of a
    (print "Enter the value of b: ") (flush)
    (let 
        [ B (read) ]                  ; read the value of b
        (print "Enter the value of c: ") (flush)
        (let
            [ C (read)                ; read the value of c
              result (quadraticRoots A B C)
              root1 (get result 0)
              root2 (get result 1)
            ]

            (printf (str "\nThe first root is \"%s\" and " 
                    "the second root is \"%s\"\n\n")
                    root1 root2)
        )
    )
  )
)

