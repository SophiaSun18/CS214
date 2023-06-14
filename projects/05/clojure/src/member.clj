;;;; member.clj checks if an element is in a list.
;;;;
;;;; Input: n, an item; n-sequence, a sequence of items
;;;; Output: True or False, boolean value
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 9, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns member)                            ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; member?() recursively checks if an item is in a list.
;;; Receive: n, an item; n-sequence, a sequence of items
;;; Output: True or False, boolean value
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn member? [n [n-sequence]]
    (if (= n (first n-sequence))                    ; if the current item is the target item
        true                                        ; return true
        (if (= 1 (count n-sequence))                ; otherwise, check if the current item is the only item in the list
            false                                   ; if so, return false
            (member? n (list (rest n-sequence)))    ; if not, recursively call the funtion on the rest of the list
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the member?() functions.
;;; Input: n, an item; n-sequence, a sequence of items
;;; Output: True or False, boolean value
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "To check if an item is in a list, input an item and a sequence: ") (flush)
 (let
    [ n (int (read)) 
      n-seq (sequence (read))] 
    (println (member? n [n-seq]))
 )
)