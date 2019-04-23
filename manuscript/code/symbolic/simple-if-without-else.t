; SMT-LIB formulae selfie-generated by ./selfie
; for manuscript/code/symbolic/simple-if-without-else.c with 300 execution depth

(set-option :produce-models true)
(set-option :incremental true)
(set-logic QF_BV)

(declare-fun r0 () (_ BitVec 8)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x1007C(~1): 
(declare-fun b1 () (_ BitVec 1)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101B8(~19): 
(assert (= b1 (bvcomp ((_ zero_extend 63) (bvult (bvsub (_ bv2 64) ((_ zero_extend 56) r0)) (_ bv1 64))) (_ bv0 64)))); beq in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101B8(~19): 
(declare-fun p2 () (_ BitVec 1)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101B8(~19): 
(assert (= p2 true)); path condition in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101B8(~19): 
(declare-fun m3 () (_ BitVec 64)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101CC(~20): 
(assert (= m3 (bvadd (_ bv40 64) ((_ zero_extend 56) r0)))); sd in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101CC(~20): 
; merge possible at manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101D0(~22): 

(push 1)
(assert (and (and p2 b1) (not (= (_ bv0 64) (_ bv0 64))))); exit in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x1005C(~1): 
(check-sat)
(get-model)
(pop 1)
(declare-fun b4 () (_ BitVec 1)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101E4(~22): 
(assert (= b4 (bvcomp ((_ zero_extend 63) (bvult (bvsub (_ bv42 64) m3) (_ bv1 64))) (_ bv0 64)))); beq in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101E4(~22): 
(declare-fun p5 () (_ BitVec 1)); variable for manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101E4(~22): 
(assert (= p5 (and p2 (not b1)))); path condition in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x101E4(~22): 
; merge possible at manuscript/code/symbolic/simple-if-without-else.c: $pc=0x10204(~26): 

(push 1)
(assert (and (and p5 b4) (not (= (_ bv0 64) (_ bv0 64))))); exit in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x1005C(~1): 
(check-sat)
(get-model)
(pop 1)

(push 1)
(assert (and (and p5 (not b4)) (not (= (_ bv1 64) (_ bv0 64))))); exit in manuscript/code/symbolic/simple-if-without-else.c: $pc=0x1005C(~1): 
(check-sat)
(get-model)
(pop 1)

(exit)