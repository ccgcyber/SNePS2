;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SNEPS; Base: 10 -*-

;; Copyright (C) 1984--2013 Research Foundation of 
;;                          State University of New York

;; Version: $Id: otag.lisp,v 1.2 2013/08/28 19:07:25 shapiro Exp $

;; This file is part of SNePS.

;; $BEGIN LICENSE$

;;; The contents of this file are subject to the University at
;;; Buffalo Public License Version 1.0 (the "License"); you may
;;; not use this file except in compliance with the License. You
;;; may obtain a copy of the License at 
;;; http://www.cse.buffalo. edu/sneps/Downloads/ubpl.pdf.
;;; 
;;; Software distributed under the License is distributed on an
;;; "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express
;;; or implied. See the License for the specific language gov
;;; erning rights and limitations under the License.
;;; 
;;; The Original Code is SNePS 2.8.
;;; 
;;; The Initial Developer of the Original Code is Research Foun
;;; dation of State University of New York, on behalf of Univer
;;; sity at Buffalo.
;;; 
;;; Portions created by the Initial Developer are Copyright (C)
;;; 2011 Research Foundation of State University of New York, on
;;; behalf of University at Buffalo. All Rights Reserved.


;; $END LICENSE$




(in-package :sneps)


; =============================================================================
;
; Data Type:   <ot> ::= 'HYP | 'DER | 'EXT 
;
; =============================================================================




; =============================================================================
;
; Data Type:   <ot> 
; 
; -----------------------------------------------------------------------------
;
; RECOGNIZERS :   is.ot       : <universal> --> <boolean>
;
; CONSTRUCTORS:   --------- 
;
; SELECTORS   :   --------- 
;
; TESTS       :   ---------
;
; UTILITY     :   describe.ot : 
;                 iseq.ot     : <ot> x <ot> --> <boolean>
;
; =============================================================================





;
; =============================================================================
;
; is.ot 
; -----
;
;       arguments     : o - <ot>
;
;       returns       : <boolean>
;
;       description   : It returns T if o is a <ot>.
;
;                                        written :  cpf 09/13/88
;                                        modified:
;
;
(defmacro is.ot (o)
  `(or (eq ,o 'der)
       (eq ,o 'hyp)
       (eq ,o 'ext)))


;
; =============================================================================
;
; describe.ot 
; -----------
;
;       arguments     : o - <ot>
;
;       returns       : <bolean>
;
;       description   : It returns an <atom> which is a description of the
;                       <ot> "o" to be printed.
;                       The description is identical to "o".
;
;                                        written:
;                                        modified:
;
;
(defmacro describe.ot (o)
  `,o)

;
; =============================================================================
;
; iseq.ot 
; -------
;
;       arguments     : ot1  - <ot>
;                       ot2  - <ot>
;
;       returns       : <bolean>
;
;       description   : It returns T if ot1 and ot2 are the same <ot>.
;
;                                        written :  cpf 10/07/88
;                                        modified:
;
;
(defmacro iseq.ot (ot1 ot2)
  `(eq ,ot1 ,ot2))

; =============================================================================





    
    




