
; Don't specialize fixnum and flonum arithmetic.

(def-macro (FLOATvector-const . lst)   `',(list->vector lst))
(def-macro (FLOATvector? x)            `(vector? ,x))
(def-macro (FLOATvector . lst)         `(vector ,@lst))
(def-macro (FLOATmake-vector n . init) `(make-vector ,n ,@init))
(def-macro (FLOATvector-ref v i)       `(vector-ref ,v ,i))
(def-macro (FLOATvector-set! v i x)    `(vector-set! ,v ,i ,x))
(def-macro (FLOATvector-length v)      `(vector-length ,v))

(def-macro (nuc-const . lst)
  `',(list->vector lst))

(def-macro (FLOAT+ . lst) `(+ ,@lst))
(def-macro (FLOAT- . lst) `(- ,@lst))
(def-macro (FLOAT* . lst) `(* ,@lst))
(def-macro (FLOAT/ . lst) `(/ ,@lst))
(def-macro (FLOAT= . lst)  `(= ,@lst))
(def-macro (FLOAT< . lst)  `(< ,@lst))
(def-macro (FLOAT<= . lst) `(<= ,@lst))
(def-macro (FLOAT> . lst)  `(> ,@lst))
(def-macro (FLOAT>= . lst) `(>= ,@lst))
(def-macro (FLOATnegative? . lst) `(negative? ,@lst))
(def-macro (FLOATpositive? . lst) `(positive? ,@lst))
(def-macro (FLOATzero? . lst)     `(zero? ,@lst))
(def-macro (FLOATabs . lst) `(abs ,@lst))
(def-macro (FLOATsin . lst) `(sin ,@lst))
(def-macro (FLOATcos . lst) `(cos ,@lst))
(def-macro (FLOATatan . lst) `(atan ,@lst))
(def-macro (FLOATsqrt . lst) `(sqrt ,@lst))
(def-macro (FLOATmin . lst) `(min ,@lst))
(def-macro (FLOATmax . lst) `(max ,@lst))
(def-macro (FLOATround . lst) `(round ,@lst))
(def-macro (FLOATinexact->exact . lst) `(inexact->exact ,@lst))

(def-macro (GENERIC+ . lst) `(+ ,@lst))
(def-macro (GENERIC- . lst) `(- ,@lst))
(def-macro (GENERIC* . lst) `(* ,@lst))
(def-macro (GENERIC/ . lst) `(/ ,@lst))
(def-macro (GENERICquotient . lst)  `(quotient ,@lst))
(def-macro (GENERICremainder . lst) `(remainder ,@lst))
(def-macro (GENERICmodulo . lst)    `(modulo ,@lst))
(def-macro (GENERIC= . lst)  `(= ,@lst))
(def-macro (GENERIC< . lst)  `(< ,@lst))
(def-macro (GENERIC<= . lst) `(<= ,@lst))
(def-macro (GENERIC> . lst)  `(> ,@lst))
(def-macro (GENERIC>= . lst) `(>= ,@lst))
(def-macro (GENERICexpt . lst) `(expt ,@lst))
