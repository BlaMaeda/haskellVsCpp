module Main where

import Control.Monad (guard)
import System.IO (isEOF)

main :: IO ()
main = readUntilPalindrome

readUntilPalindrome :: IO ()
readUntilPalindrome = do
    eof <- isEOF
    if eof then
        return ()
    else do
        line <- getLine
        if isPalindrome line then do
            putStrLn line
        else
            readUntilPalindrome

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s
