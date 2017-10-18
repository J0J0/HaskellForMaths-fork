module Math.Test.TestAll where

import Math.Test.TField

import Math.Test.TCore.TField
import Math.Test.TCore.TUtils

--import Math.Test.TAlgebras.TStructures
import Math.Test.TAlgebras.TTensorProduct
import Math.Test.TCommutativeAlgebra.TPolynomial
import Math.Test.TCommutativeAlgebra.TGroebnerBasis


import Test.QuickCheck
import Test.HUnit

-- legacy tests - should really be converted to HUnit
testall = and
    [Math.Test.TField.test]

quickCheckAll =
    do
    quickCheckUtils
    quickCheckField
    quickCheckTensorProduct

hunitAll = runTestTT $ TestList [
    testlistPolynomial,
    testlistGroebnerBasis
    ]
