import Test.Tasty
import Test.Tasty.HUnit
import Playground 

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "PEuler Tests"
  [ testCase "fibonacci" $ take 5 fibonacci @?= [1, 1, 2, 3, 5]   
  , testCase "PEuler 1" $ pe001a 9 @?= 23
  , testCase "PEuler 2" $ pe002 34 @?= 10
  , testCase "PEuler 3" $ pe003 13195 @?= 29
  , testCase "EraseFactor" $ eraseFactor 3 18 @?= 2
  ]