{-# LANGUAGE OverloadedStrings #-}

module Config
  ( Config(..)
  , defaultPort
  , connectionStr
  , connectionsNumber
  ) where

import Database.Persist.Postgresql (ConnectionPool, ConnectionString)
import Network.Wai.Handler.Warp (Port)

data Config
  = Config
  { configPool :: ConnectionPool
  , configPort :: Port
  }

-- Config constants

connectionStr :: ConnectionString
connectionStr = "host=localhost dbname=postgres user=postgres password=9791050626h port=5432"

connectionsNumber :: Int
connectionsNumber = 10

defaultPort :: Int
defaultPort = 4000
