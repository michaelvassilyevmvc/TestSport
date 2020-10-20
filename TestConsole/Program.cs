using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestConsole.Models;

namespace TestConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var players = from p in MockRepository.Players
                          join t in MockRepository.Teams on p.TeamId equals t.Id
                          let name = "Mr." + p.FIO
                          select new { FIO = name, Team = t.Name};

            foreach (var p in players)
            {
                Console.WriteLine($"{p.FIO} from {p.Team}");
            }
        }
    }
}
