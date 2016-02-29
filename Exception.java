
public class Exception {
public static void main(String args[])
{
	try
	{
		int a=10;
		for(int i=5;i<=10;i--)
		{
			int c=a/i;
			System.out.println(c);
		}
	}
	catch(ArithmeticException e)
	{
		System.out.println("Arithmetic exception caught");
	}
}
}
