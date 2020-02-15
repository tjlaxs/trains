module Trains.Car
  ( mkCar
  , reserveSeat
  )
  where
  
import Trains.Seat

import qualified Data.Map as M

type CarNumber = Int
type Seats = M.Map SeatNumber Seat

data Car
  = Car Seats
  deriving
  ( Show
  )

data Error = LazyCoder
  deriving
  ( Show
  )

mkCar :: SeatNumber -> Car
mkCar n = Car $ M.fromList ss
  where
    ss = [(x, mkSeat) | x <- [1 .. n]]

reserveSeat :: Car -> SeatNumber -> Either Error Car
reserveSeat _ _ = Left LazyCoder