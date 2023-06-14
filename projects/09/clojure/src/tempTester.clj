;; tempTester.clj tests a Clojure Temperature type,
;;  stored in Temperature.clj (in the src directory).
;;
;; Completed by: ZeAi Sun
;; Date: Mar 20, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns tempTester)

(load-file "src/Temperature.clj")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A simple driver to test our Name functions. 
;; Output: the results of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let [baseTemp (InputOp) limitTemp (InputOp) stepValue (read-line) ]
    (loop [newTemp baseTemp]
      (when (= (lessThan newTemp limitTemp) true)
        (do
          (OutputOp (convertF baseTemp))
          (OutputOp (convertC baseTemp))
          (OutputOp (convertK baseTemp))
          (println)
        )
        (recur (raise newTemp stepValue))
      )
    )
  )
  (println "\nAll tests passed!\n")
)