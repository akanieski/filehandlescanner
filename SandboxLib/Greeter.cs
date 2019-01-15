using System;

namespace SandboxLib
{
    public class Greeter
    {
        public void GreetingLoop()
        {
            while (true)
            {
                Console.WriteLine("Wait..");
                System.Threading.Thread.Sleep(1000);
            }
        }
    }
}
