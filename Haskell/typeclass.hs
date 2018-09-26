data Color = Red | Blue | Green

colorEq :: Color -> Color -> Bool

colorEq Red Red = True

colorEq Red Green = False

colorEq Blue Blue = True

colorEq _ _ = False


class BasicEq a where 
	isEqual :: a -> a -> Bool
