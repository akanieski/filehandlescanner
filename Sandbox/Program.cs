using SandboxLib;
using System;

namespace Sandbox
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Starting Greeter loop: ");
            new Greeter().GreetingLoop();
        }
    }
}
