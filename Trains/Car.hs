module Car
  ( mkCar
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
  
mkCar :: SeatNumber -> Car
mkCar n = Car $ M.fromList ss
  where
    ss = [(x, mkSeat) | x <- [1 .. n]]
