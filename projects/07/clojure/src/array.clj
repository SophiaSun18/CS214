;;;; array.clj contains a subprogram that fills an array with values
;;;; and a subprogram that displays the values in the array.
;;;;
;;;; Usage: clojure -m array
;;;;
;;;; Student Name: ZeAi Sun
;;;; Date: Feb 28, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns array)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readArray() fills an already-allocated array with values from the keyboard.
;;; Receive: array anArray, int itsSize.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn readArray [anArray itsSize]
    (loop [x 0]
        (when [< x itsSize]
            (do
                (print "Enter the next value: ") (flush)
                (let [n (read)]
                    (let [anArray (conj anArray n)])
                )
            )
            (recur (+ x 1))
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printArray() displays the values in an array on the screen, separated by newlines.
;;; Receive: array anArray, int itsSize.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn printArray [anArray itsSize]
    (loop [x 0]
        (when [< x itsSize]
            (print (nth anArray x))
            (recur (+ x 1))
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "Enter the size of the array: ") (flush)
  (let
    [ size (read) ]                     ; read the size of the array
    (readArray [] size)
    (printArray [] size)
  )
)