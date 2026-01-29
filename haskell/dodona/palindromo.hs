isPalindrome :: Eq a => [a] -> Bool
isPalindrome lista = lista == reverse lista

main = do
   print(isPalindrome [1,2,3,2,1])
   print(isPalindrome "madamimadam")