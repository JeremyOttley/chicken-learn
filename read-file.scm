#!/usr/bin/csi -ss

;; An example file reading script with chicken scheme

(use extras)

(define (read-it file)
    (let ((fh (open-input-file file)))
        (let loop((c (read-line fh)))
            (if (eof-object? c)
                (close-input-port fh)
                    (begin
                        (print c)
                            (loop (read-line fh)))))))

(define (main args)
    (define file (if (null? args) '() (car args)))
        (if (null? file)
            (display "Please supply a file name to read!\n")
                (read-it file)))
