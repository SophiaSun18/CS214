;;;; subsequence.clj returns the indicated subsequence.
;;;;
;;;; Input: n-sequence, a sequence of items; i and n, both integers
;;;; Output: result, a sequence of items
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 9, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns subsequence)                            ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; subsequence() recursively returns the indicated subsequence.
;;; Receive: n-sequence, a sequence of items; i and n, both integers
;;; Output: result, a sequence of items
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn subsequence [[n-sequence] i n]
    (if (or (or (= 0 (count n-sequence)) (> i (count n-sequence))) (> (+ i n) (count n-sequence)))  ; if param is invalid, return nil
        nil
        (do                             ; if params are all valid, recursively run the function
            (if (= n 0)
                nil
                (cons (nth n-sequence i) (subsequence [n-sequence] (+ i 1) (- n 1)))
            )
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the subsequence() functions.
;;; Input: n-sequence, a sequence of items; i and n, both integers
;;; Output: result, a sequence of items
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "Input the sequence, i and n: ") (flush)
 (let
    [ n-seq (sequence(read))
      i (int (read)) 
      n (int (read)) ] 
    (println (subsequence [n-seq] i n))
 )
)