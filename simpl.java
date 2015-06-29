
public class simpl {

public void sum(int a,int b)
{
	int c=a+b;
	System.out.println("result" +c);
}
public  void sum(int c,int b,int a)
{
int	d=c+b;
int	e=c+a;
	System.out.println(" " +d+  " " +e);
}
public static void main(String args[])
{
	simpl s=new simpl();
	s.sum(13,17);
	s.sum(20,11,13);
}
}
