;============================================================================
; o7: visual programming language for computer-aided music composition
; Copyright (c) 2013-2017 J. Bresson et al., IRCAM.
; - based on OpenMusic (c) IRCAM 1997-2017 by G. Assayag, C. Agon, J. Bresson
;============================================================================
;
;   This program is free software. For information on usage 
;   and redistribution, see the "LICENSE" file in this distribution.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
;
;============================================================================
; File author: J. Bresson
;============================================================================

(in-package :om)

(require-om-package "sound")

(compile&load (om-relative-path nil "csound"))
(compile&load (om-relative-path nil "synthesize"))

(omNG-make-package 
 "Synth"
 :container-pack *om-package-tree*
 :doc "Sound synthesis tools / connection to external synthesizers"
 :classes nil
 :functions '(synthesize csound-synth))
