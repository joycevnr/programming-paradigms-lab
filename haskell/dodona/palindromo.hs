-- isPalindrome :: Eq a => [a] -> Bool
-- isPalindrome lista = lista == reverse lista

-- main = do
--    print(isPalindrome [1,2,3,2,1])
--    print(isPalindrome "madamimadam")


isPalindrome :: Eq a => [a] -> Bool
isPalindrome [x] = True
isPalindrome [] = True
isPalindrome (x:xs) = x == last xs && isPalindrome (take (length xs - 1) xs)
--isPalindrome (x:xs) = (x == last xs) && isPalindrome (init xs) --init traz tudo menos o último
main = do
   print(isPalindrome [1,2,2,1])
   print(isPalindrome "madamimadam")