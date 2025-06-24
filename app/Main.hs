module Main where

import Playground

main :: IO ()
main = do
  let n = 600851475143
  let result = pe003 n
  putStrLn $ "Project Euler 003 for n " ++ show n ++ " is " ++ show result
    