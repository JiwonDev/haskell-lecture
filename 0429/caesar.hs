import Data.Char
encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg
decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg
