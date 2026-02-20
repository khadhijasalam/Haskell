isVowel c = elem c "aeiouAEIOU"

count s= foldr getCount (0,0) s
    where 
        getCount x (v,c)
          | isVowel x = (v+1,c)
          | otherwise =(v, c+1)

newtype Word' =
    Word' String
    deriving (Eq, Show)


mkWord :: String -> Maybe Word'
mkWord s =
  if vowels > consonants
     then Nothing
     else Just (Word' s)
  where
    (vowels, consonants) = count s