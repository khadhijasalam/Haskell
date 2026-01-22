1. A polymorphic function
d) may resolve to values of different types, depending on inputs

2. Two functions named f and g have types Char -> String and
String -> [String] respectively. The composed function g . f
has the type
b) Char -> [String]


3. A function f has the type Ord a => a -> a -> Bool and we apply
it to one numeric value. What is the type now?
a) Ord a => a -> Bool
Note: Just because you pass a number does not force a Num constraint unless the function uses numeric operations.

4. A function with the type (a -> b) -> c
b) is a higher-order function

5. Given the following definition of f, what is the type of f True?
f :: a -> a
f x = x
c) f True :: Bool -> Bool

