
(require "generic.scm")
;;
(define cangjie3-init-handler
  (lambda (id im arg)
    (generic-context-new id im "cangjie3.table" #f)))

(generic-register-im
 'cangjie3
 "*"
 "UTF-8"
 (N_ "cangjie3")
 (N_ "cangjie version 3")
 cangjie3-init-handler)

(define cangjie5-init-handler
  (lambda (id im arg)
    (generic-context-new id im "cangjie5.table" #f)))

(generic-register-im
 'cangjie5
 "*"
 "UTF-8"
 (N_ "cangjie5")
 (N_ "cangjie version 5")
 cangjie5-init-handler)
