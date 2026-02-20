import Data.Char (isAlpha, isLower, isUpper,toLower, ord, chr)

-- Function to encrypt a single character
shiftChar :: Int -> Char -> Char
shiftChar shift char
    | isLower char = chr (((ord char - ord 'a' + shift) `mod` 26) + ord 'a')
    | isUpper char = chr (((ord char - ord 'A' + shift) `mod` 26) + ord 'A')
    | otherwise    = char -- Leaves non-alphabetic characters unchanged

-- Function to encrypt an entire string
caesarCipher :: Int -> String -> String
caesarCipher shift text = map (shiftChar shift) text





-- Note: wont work cause this acts like nested loop. 
-- shifted key text = [shiftChar n c | n <- (numShift key) ,c <- text]

-- convert key letters to numbers
keyShifts :: String -> [Int]
keyShifts key = map (\c -> ord (toLower c) - ord 'a') key


vigenere :: String -> String -> String
vigenere key text = helper text (cycle (keyShifts key))
  where
    helper [] _ = []
    helper (c:cs) ks
      | isAlpha c = shiftChar (head ks) c : helper cs (tail ks)
      | otherwise = c : helper cs ks

-- Note: the below is wrong cause repeatKey function considers space as well 
--Function to give the shift value of each letter
-- numShift :: String -> [Int]
-- numShift keyword =map (\x -> (ord (toLower x) - ord 'a') ) keyword

-- --Function to repeat the keyword to the same length of actual text. So every letter is encrypted
-- repeatKey :: String -> String -> String
-- repeatKey key text =
--     take (length text) (cycle key)


-- vigenere key text = 
--     zipWith shiftChar s text
--     where 
--         s = numShift ( repeatKey key text++" ")










-- -- Function to decrypt an entire string
-- caesarDecipher :: Int -> String -> String
-- caesarDecipher shift text = map (shiftChar (-shift)) text
