safeHead :: [t] -> Maybe t
safeHead [] = Nothing
safeHead (x:_) = Just x

lst = [1,32,34.3]