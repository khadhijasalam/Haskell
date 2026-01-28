module Cipher where
import Data.Char


cipher :: Char ->Int -> Char
cipher c n =  
    let    
    --    temp =if isUpper c then ((ord c) - 64) else ((ord c) -96)
    --You can create a function to pass the value of subtraction after checking isUpper
       temp = ord c - 96
       res = (mod temp 26 )+ n + 96

      
    in  chr res


    