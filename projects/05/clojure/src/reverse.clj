;;;; reverse.clj reverses the elements being inputted.
;;;;
;;;; Input: n-sequence, a sequence of items
;;;; Output: the reversed sequence
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 9, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns reverse)                            ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; my-reverse() recursively reverses the input value.
;;; Receive: n-sequence, a sequence of items
;;; Output: the reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn my-reverse [n-sequence]
    (if (<= (count n-sequence) 1)
        n-sequence
        (do
            (if (list? (first n-sequence))
                (concat (my-reverse (rest n-sequence)) (my-reverse (list (first n-sequence))))
                (concat (my-reverse (rest n-sequence)) (list (first n-sequence)))
            )
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the my-reverse() functions.
;;; Input: n-sequence, a sequence of items
;;; Output: the reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "To reverse, input a sequence: ") (flush)
 (let
    [ n (sequence (read)) ] 
    (println (my-reverse n))
 )
)