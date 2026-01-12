
-- 1)

-- idea :: a->a
-- idea x= x+x
-- Not possible cause:
-- You know nothing about a.
-- That means:
-- You cannot add it
-- You cannot compare it
-- You cannot inspect it
-- You cannot transform it
-- You can only:
-- return it
-- ignore it
-- pass it along
-- This is called parametricity.

-- 2)
-- Ans:
f :: a-> a-> a
-- 1st way:
-- f x y = x
-- seconf way:
f x y = y


-- 3)
imp :: a-> b -> b 
imp x y = y
-- Can have only One implementation. No the behaviour does not change when the types of a and b changes.
-- i.e ) imp 1 "hi" give "hi"