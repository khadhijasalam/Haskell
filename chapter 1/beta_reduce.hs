Beta reduce Evaluate (that is, beta reduce) each of the following
expressions to normal form. We strongly recommend writing out
the steps on paper with a pencil or pen.
1. (λabc.cba)zz(λwv.w)
Ans:
(lambda A lambda B  lambda C. CBA) (z) z (lambda W lambda V.W)
subs a with z
(lambda B  lambda C. CBZ) z (lambda W lambda V.W)
subs b with 
( lambda C. CZZ)  (lambda W lambda V.W)

subs c with lambda W lambda V.W
(lambda W lambda V.W) zz
subs w with z
(lambda V.Z) z
subs v with Z
Z


2. (λx.λy.xyy)(λa.a)b
(lambda X lambda y . XYY) (lambda A. A)B
subs x with (lambda a.a) 
lambda Y. (Lambda A. A )YY (B)
subs y with B
(Lambda A. A )BB
subs (Lambda A. A ) with B
BB





3. (λy.y)(λx.xx)(λz.zq)

(lambda Y.Y)(lambda X.XX)(lambda Z.ZQ)
subs y as xx
(lambda X.XX)(lambda Z.ZQ)
((lambdaZ.ZQ)Q)
(lambda Z.ZQ)(Q)
QQ

4. (λz.z)(λz.zz)(λz.zy)
(lambda Z.Z)(lambda Z.ZZ)(lambda Z.ZY)
subs z as zz
(lambdaZ.ZZ)(lambda Z.ZY)
subs z as lambda Z.ZY
(lambdaZ.ZY)(lambdaZ.ZY)
subs lambdaZ.Z as lambdaZ.ZY
(lambdaZ.ZY)(Y)
YY


5. (λx.λy.xyy)(λy.y)y

(lambda X.lambda Y.XYY) (lambdaY.Y)Y
replace x with lamda Y.Y  
(lambda Y.(lambda Y.Y)YY) (lambdaY.Y)Y

(lambda Y.(lambda Y.Y)YY)(Y)
apply y
(lambdaY.Y)(Y)Y
YY


6. (λa.aa)(λb.ba)c 
(lambda A.AA) (lambda B.BA)C
subs a with lambda B.BA
(lambda B.BA)(lambda B.BA)C
(lambda B.BA)(A)C
AAC


7. (λxyz.xz(yz))(λx.z)(λx.a)
lambda X. (Lambda Y. (Lambda Z. XZ( YZ)))  (lambda X. Z) (Lambda X. A) 
subs x=lambda X. Z
lambda Y . lambda z .(lambda x.z) z (y z)  (lambda x. A)
subs lambda x. a
Lambda Z .( lambda x.z) z  ((lambda x. A)Z)
lambda x.z -> z then lambda x.A -> A
Lambda Z. Z A