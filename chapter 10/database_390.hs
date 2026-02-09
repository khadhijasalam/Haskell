import Data.Time

data DatabaseItem = DbString String
    | DbNumber Integer
    | DbDate UTCTime    
    deriving (Eq, Ord, Show)
theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
    (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbNumber 2001
  , DbString "Hello, world!"
  , DbDate (UTCTime
    (fromGregorian 1921 5 1)
    (secondsToDiffTime 34123))
  ]


-- Q .1
-- filterDbDate :: [DatabaseItem] -> [UTCTime]
-- filterDbDate [] = []
-- filterDbDate (x:xs) = 
  -- case x of
   
  --   DbDate t-> t : filterDbDate xs
  --   _  -> filterDbDate xs
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = 
  foldr 
  (
    \item acc->
      case item of 
        DbDate t -> t : acc 
        _ -> acc) 
  []


-- Q. 2
-- Write a function that filters for DbNumber values and returns a list
-- of the Integer values inside them.
-- filterDbNumber :: [DatabaseItem] -> [Integer]
-- filterDbNumber [] = []
-- filterDbNumber (x:xs) = 
--   case x of 
--     DbNumber n -> n : filterDbNumber xs
--     _ -> filterDbNumber xs
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = 
  foldr 
    (\item acc ->
    case item of 
      DbNumber t -> t :acc
      _ -> acc
      ) []


-- 3. Write a function that gets the most recent date.
mostRecent :: [DatabaseItem] -> UTCTime
-- mostRecent db = maximum (filterDbDate db)
mostRecent = foldr (
  \item acc ->
    case item of 
      DbDate t -> max t  acc
      _ -> acc
       )(UTCTime
    (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123)) 
  

-- Q.4
-- Write a function that sums all of the DbNumber values.
sumDb :: [DatabaseItem] -> Integer
-- sumDb db = sum (filterDbNumber db)
sumDb = foldr (\item acc ->
  case item of 
    DbNumber n -> n+ acc 
    _ -> acc
  ) 0 
   



-- Q 5
-- 5. Write a function that gets the average of the DbNumber values.

avgDb :: [DatabaseItem] -> Double

avgDb db = 
  let
     xs= filterDbNumber db
     sumi = fromIntegral ((sum ( xs) )) 
     d = fromIntegral (length xs )
     in sumi / d

-- avgDb xs =
--   let 
--     deno =
--       foldr (\item acc ->
--       case item of 
--       DbNumber n -> acc+1
--       _ -> acc) 0 xs

--     sumi =
--      foldr (\item acc ->
--      case item of 
--      DbNumber n -> n+ acc 
--      _ -> acc
--       ) 0 xs
--   in fromIntegral sumi / fromIntegral deno

