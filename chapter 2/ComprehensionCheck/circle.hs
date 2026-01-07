circleArea :: Double -> Double
circleArea r = 3.14 * (r * r)


--The below is impure function. Not recommended
--circleArea :: Double -> IO()
--circleArea r = putStrLn("The Area of circle is: " ++show(3.14*(r)*(r)))