;;;; superReverse.clj deep reverses the elements being inputted.
;;;;
;;;; Input: n-sequence, a sequence of items
;;;; Output: the reversed sequence
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 13, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns superReverse)                            ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; super-reverse() recursively reverses the input value.
;;; Receive: n-sequence, a sequence of items
;;; Output: the reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn super-reverse [n-sequence]
    (if (<= (count n-sequence) 1)               ; if the list only contains 1 item or is empty, return the list
        n-sequence
        (do                                     ; if the list contains more than 1 item
            (if (list? (first n-sequence))      ; if the first item is a sub-list
                (super-reverse(cons (super-reverse (first n-sequence)) (super-reverse (rest n-sequence))))  ; super-reverse the sublist as well as the whole list
                (concat (super-reverse (rest n-sequence)) (list (first n-sequence)))                        ; if not, just reverse the list as normal reverse
            )
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the super-reverse() functions.
;;; Input: n-sequence, a sequence of items
;;; Output: the reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "To deep reverse, input a sequence: ") (flush)
 (let
    [ n (sequence (read)) ] 
    (println (super-reverse n))
 )
)