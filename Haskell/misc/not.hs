class Not a where 
	(!) :: a -> Bool

instance Not Bool where
		(!) True = False
		(!) False = True	