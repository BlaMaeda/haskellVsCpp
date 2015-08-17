import Control.Monad (liftM, liftM2)
import Text.Read (readMaybe)
import Data.Maybe (isJust)

main = do
    inputLines <- liftM lines getContents
    parsedLines <- return $ map parseLine $ map words inputLines
    sums <- return $ map sumMaybe parsedLines
    mapM_ (printOr "Wrong line") sums

parseLine :: [String] -> [Maybe Int]
parseLine = map readMaybe

sumMaybe :: (Num a) => [Maybe a] -> Maybe a
sumMaybe = foldl (liftM2 (+)) (Just 0)

printOr :: (Show a) => String -> Maybe a -> IO ()
printOr _ (Just x) = putStrLn $ show x
printOr s Nothing  = putStrLn s
