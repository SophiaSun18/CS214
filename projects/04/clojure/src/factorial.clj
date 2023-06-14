;;;; factorial.clj computes the factorial of the input.
;;;;
;;;; Input: n, a number
;;;; Output: n!
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 6, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFactorial() recursively computes the n! value.
;;; Receive: n, a number
;;; Output: n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getFactorial [x]
   (loop [i 1 result 1]
      (if (<= i x)
         (recur (+ i 1)  (* result i))
         result
      )
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the getFactorial() functions.
;;; Input: n
;;; Output: n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "To compute n!, enter n: ") (flush)
 (let
    [ n (int (read)) ] 
    (println (getFactorial n))
 )
)

