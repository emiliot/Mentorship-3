module Main where

import Lib

main :: IO ()
main = do
  putStrLn $ show $ fibRecursive 30
  putStrLn $ show $ fibTailRecursive 30
  putStrLn $ show $ myMaxRecursive ([1..9900000] :: [Int])
  putStrLn $ show $ myMaxTailRecursive1 ([1..9900000] :: [Int])