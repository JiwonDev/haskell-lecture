main = do
  print triangles

triangles = [(a, b, c) | a <- [1 .. 10], b <- [1 .. 10], c <- [1 .. 10], c == sqrt (a ^ 2 + b ^ 2)]
