using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{


    public class Athlete: SportPerson
    {
        public List<Result> Results { get; set; } = new List<Result>();
    }

    public enum State
    {
        Active,
        Archive,
        Planed,
        Canceled,
        Transfer,
        Error
    }

    public class Competition
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Period Period { get; set; }
        public State State { get; set; } = State.Planed;

    }

    public class Result
    {
        public int Id { get; set; }
        public int Place { get; set; }
        public int CompetitionId { get; set; }
        public State State { get; set; } = State.Active;
    }
    
}
