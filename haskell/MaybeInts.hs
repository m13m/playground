main = do putStrLn "What is 5! ?"
          x <- readLn
          if x == 5
              then putStrLn "You're right!"
              else putStrLn "You're wrong!"
