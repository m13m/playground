module ShowPerson where
import Text.Printf



data Person = Person { 

                        firstName :: String
                      , secondName :: String    
                     }

instance Show Person where
    show (Person f s) = printf "The Person :   %s, %s" f s


