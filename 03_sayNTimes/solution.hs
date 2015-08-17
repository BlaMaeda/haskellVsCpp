module Main where

import Control.Monad (guard)
import Data.Maybe (isJust)
import Text.Read (readMaybe)

main = do
    line <- getLine
    case parse line of
        Just (times, message) -> say times message
        Nothing -> return ()

parse :: String -> Maybe (Int, String)
parse line = do
    guard $ length lineWords == 2
    let (strTimes:message:[]) = lineWords in do
        times <- readMaybe strTimes :: Maybe Int
        return (times, message)
    where lineWords = words line
    

say :: Int -> String -> IO ()
say n s = mapM_ putStrLn $ replicate n s
