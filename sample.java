
public class sample {
	int d;
int e;
	public void calculat(int a,int b)
	{
		int c=a+b;
		System.out.println("result" +c);
}
	public  void calculat(int c,int b,int a)
	{
	d=c+b;
	e=c+a;
		System.out.println("result" +d+ "" +e);
	}
class sam extends sample
{
	public void calculat()
	{
	if(d>e){
	System.out.println("b is big number");
	}
	else
	{
		System.out.println("a is big number");
	}}
	
public  void main(String args[])
{
	sample s=new sample();
	s.calculat(5,12);
	s.calculat(22,8,5);
	sample s1=new sam();

}	
}
}	


