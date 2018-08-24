def quad[A,B] (x : A, y: B) : ((A,A), (B,B)) = 
{
  def pair[C] (z: C): (C,C) = (z,z)
  
  return (pair[A](x), pair[B](y))
}
