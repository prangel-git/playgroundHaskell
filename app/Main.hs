module Main where

import Playground

main :: IO ()
main = do
  let n = 4000000
  let result = pe002 n
  putStrLn $ "Project Euler 002 for n " ++ show n ++ " is " ++ show result
    