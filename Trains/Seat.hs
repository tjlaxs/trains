module Trains.Seat
  ( mkSeat
  , reserve
  ) where

type SeatNumber = Int

data SeatState
  = Free
  | Reserved
  deriving
  ( Show
  )

data Seat
  = Seat SeatNumber SeatState
  deriving
  ( Show
  )
  
data SeatError
  = SeatNotFree SeatNumber
  deriving
  ( Show
  )
  
mkSeat :: SeatNumber -> Seat
mkSeat = flip Seat Free

reserve :: Seat -> Either SeatError Seat
reserve (Seat n Free) = Right $ Seat n Reserved
reserve (Seat n _) = Left $ SeatNotFree n