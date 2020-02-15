module Main where

import Trains.Seat
import Trains.Car

main = do
  let s = mkSeat
  putStrLn $ show s
  let s2 = reserve s
  putStrLn $ show s2
  let s3 = fmap reserve s2
  putStrLn $ show s3
  let c = mkCar 40
  putStrLn $ show c
  let c2 = reserveSeat c 3
  putStrLn $ show c2