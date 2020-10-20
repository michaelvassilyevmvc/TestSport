using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{
    public abstract class Person
    {
        public int Id { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public DateTime DoB { get; set; }
        public List<Person> Parents { get; set; } = new List<Person>();
        public State State { get; set; } = State.Active;
    }
}
