import java.util.Scanner;
public class Myswap implements intrfc {
	
	Scanner n=new Scanner(System.in);	
	public void swap()
	{
		int	a=n.nextInt();
		System.out.println(a);
		int	b=n.nextInt();
		System.out.println(b);
	int temp=0;
	a=temp;
	b=a;
	temp=b;
	System.out.println("Afer swap:a=" +a);
	System.out.println("Afer swap:b=" +b);
	}
	public void swap2(){
	int	a=n.nextInt();
	System.out.println(a);
	int	b=n.nextInt();
	System.out.println(b);
		a=a+b;
		b=a-b;
		a=a-b;
		System.out.println("Afer swap:a=" +a);
		System.out.println("Afer swap:b=" +b);	

	}
public static void main (String args[])
{
	Myswap sw=new Myswap();
	sw.swap();
	sw.swap2();
}
}
