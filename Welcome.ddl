
-- Welcome to DaeDaLus!
--
-- DaeDaLus (DDL) has a reference manual at
-- 
--  https://galoisinc.github.io/daedalus/
--
-- This file is a sandbox for trying out DDL features, and seeing the
-- result.

def HelloWorld =
  block
    hello = Match "Hello"
    Match [' ']
    world = Match "World"

-- Try putting your cursor inside this definition and running the
-- 'Watch at point' command via the command palette.
-- ('View > Command Palette ...' from the menu bar)
--
-- This will open a new window which will continually execute this
-- definition --- every time you change the file (and it type checks),
-- the command will be re-run, and the results displayed in the
-- window.
def TestHelloWorld = RunTest HelloWorld "Hello World"

-- -----------------------------------------------------------------------------
-- Some utility functions

def RunTest P input =
  block
    SetStream (arrayStream input)
    P
