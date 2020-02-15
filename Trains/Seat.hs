module Trains.Seat
  ( mkSeat
  , reserve
  , Seat
  , SeatNumber
  ) where

type SeatNumber = Int

data SeatState
  = Free
  | Reserved
  deriving
  ( Show
  )

data Seat
  = Seat SeatState
  deriving
  ( Show
  )
  
data SeatError
  = SeatNotFree
  deriving
  ( Show
  )
  
mkSeat :: Seat
mkSeat = Seat Free

reserve :: Seat -> Either SeatError Seat
reserve (Seat Free) = Right $ Seat Reserved
reserve (Seat _) = Left $ SeatNotFree