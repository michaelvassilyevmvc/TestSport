using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{
    public class SportPerson: Person
    {
        public List<int> KindsOfSport { get; set; }
        public List<Period> CareerPeriods { get; set; }

    }
}
