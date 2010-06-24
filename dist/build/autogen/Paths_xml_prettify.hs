module Paths_xml_prettify (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/usr/local/bin"
libdir     = "/usr/local/lib/xml-prettify-0.0.1/ghc-6.12.2"
datadir    = "/usr/doc/share/xml-prettify-0.0.1"
libexecdir = "/usr/local/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "xml_prettify_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "xml_prettify_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "xml_prettify_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "xml_prettify_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
