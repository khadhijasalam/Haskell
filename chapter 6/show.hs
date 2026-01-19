data Mood = Blah
instance Show Mood where
   show _ = "Blah"


-- Without instance, error
-- data Mood = Blah

-- show _ = "Blah"
