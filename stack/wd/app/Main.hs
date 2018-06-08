{-# LANGUAGE OverloadedStrings #-}
module Main where
import Test.WebDriver
import Control.Monad.IO.Class
import qualified Data.ByteString.Lazy.Char8 as B
import Lib

chromeConfig :: WDConfig
chromeConfig = useBrowser chrome defaultConfig

dockerConfig :: WDConfig
dockerConfig = chromeConfig { wdHost = "standalone-chrome" }

main :: IO ()
main = runSession dockerConfig $ do
  openPage "http://example.com/"
  screenshotWriteFile "example.png"

screenshotWriteFile:: FilePath -> WD ()
screenshotWriteFile name = do
  string <- screenshot
  liftIO . B.writeFile name $ string 
