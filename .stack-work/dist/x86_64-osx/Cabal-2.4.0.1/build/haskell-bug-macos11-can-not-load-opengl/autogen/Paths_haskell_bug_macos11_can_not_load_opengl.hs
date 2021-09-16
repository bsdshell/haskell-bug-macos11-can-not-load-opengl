{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_haskell_bug_macos11_can_not_load_opengl (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/bin"
libdir     = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/lib/x86_64-osx-ghc-8.6.5/haskell-bug-macos11-can-not-load-opengl-0.1.0.0-D6Zitsl2ck865mwdRplys9-haskell-bug-macos11-can-not-load-opengl"
dynlibdir  = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/lib/x86_64-osx-ghc-8.6.5"
datadir    = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/share/x86_64-osx-ghc-8.6.5/haskell-bug-macos11-can-not-load-opengl-0.1.0.0"
libexecdir = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/libexec/x86_64-osx-ghc-8.6.5/haskell-bug-macos11-can-not-load-opengl-0.1.0.0"
sysconfdir = "/Users/aaa/myfile/github/haskell-bug-macos11-can-not-load-opengl/.stack-work/install/x86_64-osx/217e7cd8b137b668bc396a70f4a1a73ec99603afe18d4196dd4f5b446ff79b67/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_bug_macos11_can_not_load_opengl_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
