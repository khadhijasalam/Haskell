a) fully polymorphic type variable
b) constrained polymorphic type variable
c) concrete type constructor.


-- Q.2
f :: zed -> Zed -> Blah
     [0]    [1]    [2]
0-> fully polymorphic
1-> concrete type polymorphic (Upper case Zed)
2->concrete type constructor.

-- Q.3
f :: Enum b => a -> b -> C
              [0]  [1]  [2]  
0-> Fully polymorphic
1-> Constrained polymorphic ( Enum b)
2-> Concrete( Cps 'C')

-- Q.4
 
f :: f -> g -> C
    [0]  [1]   [2]
0,1 -> Fully polymorphic
2 -> Concrete 
