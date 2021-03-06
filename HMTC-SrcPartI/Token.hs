{-
******************************************************************************
*                                  H M T C                                   *
*                                                                            *
*       Module:         Token                                                *
*       Purpose:        Representation of tokens (lexical symbols)           *
*       Authors:        Henrik Nilsson                                       *
*                                                                            *
*                 Copyright (c) Henrik Nilsson, 2006 - 2012                  *
*                                                                            *
******************************************************************************
-}

-- | Representation of tokens (lexical symbols).

module Token where

-- HMTC module imports
import Name


-- | Token type.

data Token
    -- Graphical tokens
    = LPar      -- ^ \"(\"
    | RPar      -- ^ \")\"
    | Comma     -- ^ \",\"
    | Semicol   -- ^ \";\"
    | Colon     -- ^ \":\"
    | ColEq     -- ^ \":=\"
    | Equals    -- ^ \"=\"
    | Question  -- ^ \"?\" T1.2

    -- Keywords
    | Begin     -- ^ \"begin\"
    | Const     -- ^ \"const\"
    | Do        -- ^ \"do\"
    | Else      -- ^ \"else\"
    | End       -- ^ \"end\"
    | If        -- ^ \"if\"
    | In        -- ^ \"in\"
    | Let       -- ^ \"let\"
    | Then      -- ^ \"then\"
    | Var       -- ^ \"var\"
    | While     -- ^ \"while\"
    | Repeat    -- ^ \"repeat\" T1.1
    | Until     -- ^ \"until\"  T1.1
    | Elsif     -- ^ \"elsif\"  T1.3

    -- Tokens with variable spellings
    | LitInt {liVal :: Integer}         -- ^ Integer literals
    | Id     {idName :: Name}           -- ^ Identifiers
    | Op     {opName :: Name}           -- ^ Operators
    | CharLit {chVal :: Char}           -- ^ Character Literals T1.4

    -- End Of File marker
    | EOF                               -- ^ End of file (input) marker.
    deriving (Eq, Show)
