
public class newst {
String name;
int age;
static String dept="eee";
static int a=0;
void display(String s,int n)
{
	name=s;
	age=n;;
	System.out.println("name-"+s+" " +"age-"+n+ " "+dept);
	System.out.println(a++);
}
	public static void main(String args[])
	{
		newst st=new newst();
		st.display("sri",21);
		st.display("ggg",23);
		newst st2=new newst();
	}
}

