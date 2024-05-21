(import (chicken random))

(define (generate-random-string length)
  ;; Generate a specified number of random bytes
  (let ((bytes (random-bytes length)))
    ;; Convert the byte array to a string
    (apply string (map char->integer bytes))))

;; (display (generate-random-string 10))
;;(newline)
