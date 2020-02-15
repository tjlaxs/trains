module Main where

import Trains.Seat

main = do
  let s = mkSeat
  putStrLn $ show s
  let s2 = reserve s
  putStrLn $ show s2
  let s3 = fmap reserve s2
  putStrLn $ show s3