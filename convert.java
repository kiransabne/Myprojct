import java.util.Scanner;


public class convert
{
	char[] dig={'0','1','2','3','4','5','6','7'};
   public convert()
   {   
	   String str="";
	   Scanner n= new Scanner(System.in);
	   System.out.println("Enter the numbr");
	   int a =n.nextInt();
	   while(a>0)
	   {
	 int rem=a%8;
	   str=dig[rem]+str;
	   a=a/8;
	   }
	   System.out.print("Result"  +str);
   }
	public static void main(String args[])
	{
		convert on=new convert();
}
}
