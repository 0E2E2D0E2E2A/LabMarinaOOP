using System;

namespace Marina_OOP_2_2
{
    class DiscriminantLessThanZeroException : Exception
    {
        protected Exception exception;
        private string msg;

        public DiscriminantLessThanZeroException() { }
        public DiscriminantLessThanZeroException(string msg) : base(msg) { }

        public DiscriminantLessThanZeroException(string msg, Exception inner) : base(msg, inner) { }
    }

    class Error
    {
        public int a;
        public int b;
        public int c;
        public int D; //D=b^2-4ac

        private string msg = "Дискриминант квадратного уравнения равен меньше нуля";
        Exception exception;

        public Error(int a, int b, int c) 
        { 
            D = (int)(Math.Pow(b, 2) - 4 * a * c);

            if (D < 0)
            {
                throw new DiscriminantLessThanZeroException(msg, exception);
            }
            
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Error error = new Error(1, 2, 3);
            }
            catch (DiscriminantLessThanZeroException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}