

-- dividedBy :: Integral a => a -> a -> (a, a)
-- dividedBy num denom = go num denom 0
--   where go n d count

--           | d < 0 && n < 0 = dividedBy (abs(n)) (abs(d))
--           | d < 0 || n < 0 = (-fst(dividedBy (abs(n)) (abs(d))), snd(dividedBy (abs(n)) (abs(d))))
--           | n < d = (count, n)
--           | otherwise = go (n - d) d (count + 1)


data DividedResult
  = Result Integer
  | DividedByZero
  deriving (Show)

-- dividedBy :: Integral a => a -> a -> a

-- dividedBy _ 0 = error "Division by zero"
dividedBy :: Integer -> Integer -> DividedResult
dividedBy _ 0 = DividedByZero

dividedBy num denom = 
  let 
    x = abs num
    y = abs denom 
    isNegative = if num < 0 && denom < 0 then False else num < 0 || denom < 0
  in 
    if isNegative then Result(negate (go x y 0) )else Result(go x y 0) 


  where go n d count
          | n < d = count 
          | otherwise = go (n - d) d (count + 1)
