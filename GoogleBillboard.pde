public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
	//String digits = e.substring(0,11);
	//double dNum = Double.parseDouble(digits);
	//System.out.println(dNum); //displays 7.182818284E9
	for (int pos = 0; pos < e.length()-9; pos++)
	{
		double test = Double.parseDouble(e.substring(pos, pos+10));
			if (isPrime(test) == true)
			{
				System.out.println(test);
				break;
			}
	}
}  

public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2)
    return false;
  for (int i=2; i <=Math.sqrt(dNum); i++)
  {
  	if (dNum % i == 0)
      return false;
  }
  return true;  
} 
