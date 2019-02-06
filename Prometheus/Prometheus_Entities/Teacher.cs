using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prometheus_Entities
{
    //Properties for Teachers
    class Teacher
    {
        public int TeacherID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public DateTime DOB { get; set; }
        public string City { get; set; }
        public string Password { get; set; }
        public long MobileNo { get; set; }
        public bool IsAdmin { get; set; }
    }
}
