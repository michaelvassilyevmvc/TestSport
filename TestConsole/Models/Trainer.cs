using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{
    public class Trainer : SportPerson
    {
        public List<Athlete> Athletes { get; set; } = new List<Athlete>();
    }

}
