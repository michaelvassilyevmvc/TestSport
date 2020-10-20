using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole.Models
{
    public class MockRepository
    {
        public static List<Team> Teams { get; private set; }
        public static List<Player> Players { get; private set; }
        public static List<KindOfSport> KindsOfSport { get; set; }

        public static List<Athlete> Athletes{ get; set; }

        static MockRepository()
        {
            Teams = new List<Team>
            {
                new Team{ Id = 1, Name = "Barcelona"},
                new Team{ Id = 2, Name = "Liverpool"},
                new Team{ Id = 3, Name = "Manchester City"},
                new Team{ Id = 4, Name = "Manchester United"},
                new Team{ Id = 5, Name = "Real Madrid"},
                new Team{ Id = 6, Name = "Dinamo Kiev"},
                new Team{ Id = 7, Name = "Spartak Moscow"},
                new Team{ Id = 8, Name = "Shahter Karaganda"},
            };

            Players = new List<Player>
            {
                new Player{ Id = 1, FIO="Tihanov A.", TeamId = 7},
                new Player{ Id = 2, FIO="Savin E.", TeamId = 7},
                new Player{ Id = 3, FIO="Ronaldo C.", TeamId = 4},
                new Player{ Id = 4, FIO="Messi L.", TeamId = 1},
                new Player{ Id = 5, FIO="Backhem D.", TeamId = 4},
                new Player{ Id = 6, FIO="Fenonchenko A.", TeamId = 8},
                new Player{ Id = 7, FIO="Casilias I.", TeamId = 5},
                new Player{ Id = 8, FIO="Ermolenko K.", TeamId = 3},
                new Player{ Id = 9, FIO="Tores F.", TeamId = 2},
                new Player{ Id = 10, FIO="Heiro F.", TeamId = 5},
                new Player{ Id = 11, FIO="Figu L.", TeamId = 5},
                new Player{ Id = 12, FIO="Owen M.", TeamId = 2},
            };

            KindsOfSport = new List<KindOfSport>
            {
                new KindOfSport{Id=1,Name="Лыжные гонки"},
                new KindOfSport{Id=2,Name="Биатлон"},
                new KindOfSport{Id=3,Name="Футбол"},
                new KindOfSport{Id=4,Name="Хоккей"},
                new KindOfSport{Id=5,Name="Плавание"},
                new KindOfSport{Id=6,Name="Бокс"},
                new KindOfSport{Id=7,Name="ММА"},
                new KindOfSport{Id=8,Name="Конькобежный спорт"},
                new KindOfSport{Id=9,Name="Шорт-трек"},
                new KindOfSport{Id=10,Name="Баскетбол"},
                new KindOfSport{Id=11,Name="Гандбол"},
            };

            Athletes = new List<Athlete>
            {
                 new Athlete{
                    Id = 1,
                    LastName = "Иванов",
                    FirstName = "Иван",
                    MiddleName="Иванович",
                    KindsOfSport=new List<int>{1,2},
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {
                        new Period{ StartDate = DateTime.Today, EndDate = null}
                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
                new Athlete{
                    Id = 2,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
               
                new Athlete{
                    Id = 3,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
                new Athlete{
                    Id = 4,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
                new Athlete{
                    Id = 5,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
                new Athlete{
                    Id = 6,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
                new Athlete{
                    Id = 7,
                    LastName = "",
                    FirstName = "",
                    MiddleName="",
                    KindsOfSport=new List<int>
                    {

                    },
                    DoB=new DateTime(2000,1,15),
                    CareerPeriods=new List<Period>
                    {

                    },
                    Parents = null,
                    Results = null,
                    State = State.Active
                },
            };


        }

        
    }
}
