{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

import EmbedString (embedStr)
import Text.RawString.QQ (r)

license :: String
license = intro ++ lic ++ newline
    where
        lic= $(embedStr (readFile "./LICENSE"))
        newline = [r|
|]
        intro = [r|
Included Software License
-------------------------
The LICENSE for this app is ...
|]


main :: IO ()
main = putStr license
