using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace TestTaskForHh
{

    
    public static class Square
    {
        static double PerimValue;
        static double P = 3.14;

        static public double PerimCircle(int Radius)
        {
            
            int RadQur = Convert.ToInt32(Math.Pow(Radius, 2));
            PerimValue = (P * RadQur);

            return PerimValue;

        }


        static public double SquareOfTri(int a, int b, int c)
        {
            int p = (a + b + c) / 2;


            double C = Math.Pow(c, 2); 

            if (C == (a*a) + (b*b))
            {
                Console.WriteLine("Треугольник прямоугольный");
            }
            else
            {
                Console.WriteLine("Треугольник не прямоугольный");
            }

            PerimValue = Math.Sqrt(p * (p-a) * (p-b)*(p-c));

            return PerimValue;
        }

        

    }
}
