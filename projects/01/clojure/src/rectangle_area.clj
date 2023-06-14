;;;; rectangle_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The width and height of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rectangle_area
;;;;
;;;; Author: ZeAi Sun
;;;; Date: Jan 12, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangleArea() computes the area of a rectangle.
;;; Receive: itsWidth, itsHeight, both are numbers.
;;; Precondition: itsRadius >= 0.0, itsHeight >= 0.0
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn rectangleArea [itsWidth itsHeight]
  (* itsWidth itsHeight) ; return w*h
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the width and height of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its width: ") (flush)
  (let  ; read the width
    [ width (read) ]
    (assert (>= width 0) "-main: width must be positive")

    (print   " enter its height: ") (flush)
    (let  ; read the height
      [ height (read)]
      (assert (>= height 0) "-main: height must be positive")

      (printf "\nThe area is %f\n\n" (rectangleArea width height))

      (print "\nThe area is ")
      (print (rectangleArea width height))
      (print "\n\n")

      (printf "\nThe area is %.15f\n\n" (rectangleArea width height))
    )
  )
)
