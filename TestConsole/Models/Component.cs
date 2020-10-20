using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{
    public class Component
    {
        public int Id { get; set; }
        public int UserCount { get; set; }

        public Component()
        {

        }

        public Component(int count)
        {
            this.UserCount = count;
        }

        public static Component operator +(Component comp1, Component comp2)
        {
            return new Component { UserCount = comp1.UserCount + comp2.UserCount };
        }

        public static Component operator ++(Component comp)
        {
            return new Component { UserCount = comp.UserCount + 10 };
        }

        public override string ToString()
        {
            return $"{this.UserCount}";
        }
    }
}
