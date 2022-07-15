import Control.Category ((>>>))
import Data.Function ((&))

gen' :: Integer -> [[Integer]]
gen' 0 = return []
gen' n = [ (i:y)
       | i <- [3, 6, 9]
       , y <- gen' $ n - 1
       , case y of
           (x:_) -> x /= i
           _     -> True ]

gen 0 = []
gen n = (gen $ n - 1) ++ gen' n

convert' s [] = s
convert' s (x:xs) = convert' (s * 10 + x) xs

convert = convert' 0

occulta n m = gen n & map (convert >>> (`rem` m)) & maximum

main = print $ occulta 3 1000
