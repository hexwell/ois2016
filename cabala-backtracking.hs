occulta' :: Integer -> Integer -> Integer -> Integer -> Integer
occulta' cn cm n res = maximum $ map loop_body [3, 6, 9]
  where
    loop_body i = if cond then res4 else 0
      where
        new_num = n * 10 + i
        cond = n `rem` 10 /= i && new_num < 10 ^ cn
        res1 = new_num `rem` cm
        res2 = if res1 > res then res1 else res
        res3 = occulta' cn cm new_num res2
        res4 = if res3 > res2 then res3 else res2

occulta n m = occulta' n m 0 0

main = print $ occulta 3 1000
