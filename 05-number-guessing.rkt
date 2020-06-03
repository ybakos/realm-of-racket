#lang racket

(require 2htdp/universe 2htdp/image)

(struct interval (small big))
(define WIDTH 600)
(define HEIGHT 600)
(define TEXT-SIZE 18)
(define TEXT-X 10)
(define TEXT-UPPER-Y 10)
(define TEXT-LOWER-Y 10)
(define COLOR "red")

(define HELP-TEXT
  (text "up for larger numbers, down for smaller ones"
        TEXT-SIZE
        "blue"))
(define HELP-TEXT2
  (text "Press = when your number is guessed; q to quit."
        TEXT-SIZE
        "blue"))

(define MT-SC
  (place-image/align HELP-TEXT TEXT-X TEXT-UPPER-Y "left" "top"
                     (place-image/align HELP-TEXT2 TEXT-X TEXT-LOWER-Y "left" "bottom"
                                        (empty-scene WIDTH HEIGHT))))

(define (start lower upper)
  (big-bang (interval lower upper)
    (on-key deal-with-guess)
    (to-draw render)
    (stop-when single? render-last-scene)))

