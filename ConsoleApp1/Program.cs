namespace ConsoleApp1;

class Program
{
    
    struct Vector
    {
       
        public Vector()
        {
            x = 1;
            y = 2;
        }

        public int x=10;
        public int y=11;
    }
    static void Main(string[] args)
    {
        Vector vector = new Vector();
        Console.WriteLine($"{vector.x}+{vector.y}");
    }
}