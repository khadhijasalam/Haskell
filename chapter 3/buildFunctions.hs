
-- Q1)

-- a) "Curry is awesome" ++ "!"
-- b) "Curry is awesome!" !! 4
-- c)  drop 9 "Curry is awesome!"

s="Curry is awesome"

addExclaim :: IO()
addExclaim = do
    putStrLn (x ++ "!")
    where x = s

retY :: IO()
retY = do 
    print (x !! 4)
    -- putStrLn [x !! 4]

    where x = s
retAwesome :: IO()
retAwesome = do 
    putStrLn(drop 9 x)
    where x= s


-- Q. 3
thirdLetter :: String -> Char
thirdLetter  x= x !! 2
   
    -- print (take 3 x)
    -- where 

-- Q. 4
myStr="Curryyyyingg"
letterIndex :: Int -> Char
letterIndex x= myStr !! (x-1)


-- Q. 5

rvrs ::  IO()
rvrs = do 
    let y = drop 5 z 
    putStrLn((drop 9 z )++(take 4 y )++(take 5 z))
    
    where z="Curry is awesome"


-- Q. 6

main :: IO()

main = do
    addExclaim 
    retY
    retAwesome
    rvrs
    
    