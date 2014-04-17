module Test where

import Main
import Test.QuickCheck
import Test.HUnit

-- UnitTests for "new", "not" and "while"
acceptNew, acceptNot, acceptWhile :: Test
acceptNew   = TestCase (assertBool "accepting new"   $ accept "new")
acceptNot   = TestCase (assertBool "accepting not"   $ accept "not")
acceptWhile = TestCase (assertBool "accepting while" $ accept "while")

tests :: Test
tests = TestList [ TestLabel "acceptNew"   acceptNew
                 , TestLabel "acceptNot"   acceptNot
                 , TestLabel "acceptWhile" acceptWhile
                 ]

-- QuickCheck for the rest
prop_doNotAccept :: String -> Property
prop_doNotAccept word =
    (word `notElem` ["new", "not", "while"])
        ==> not $ accept word

main :: IO ()
main = do
    putStrLn "===> checking acceptance of new, not and while"
    runTestTT tests
    putStrLn "===> checking the rest"
    quickCheck prop_doNotAccept
