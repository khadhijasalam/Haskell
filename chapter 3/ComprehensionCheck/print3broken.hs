
-- Fixed Error
module Print3Broken where
printSecond :: IO ()
printSecond = do
   putStrLn greeting
   where greeting = "Yarrrrr"
main :: IO ()
main = do
   -- putStrLn greeting
   printSecond
      -- where greeting = "Yarrrrr"


-- Fix 2: Make it global
-- greeting :: String
-- greeting = "Yarrrrr"

-- printSecond :: IO ()
-- printSecond = putStrLn greeting

-- main :: IO ()
-- main = do
--   putStrLn greeting
--   printSecond
