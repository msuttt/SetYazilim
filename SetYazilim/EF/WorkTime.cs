using System;
using System.Collections.Generic;

#nullable disable

namespace SetYazilim.EF
{
    public partial class WorkTime
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public DateTime? Tarih { get; set; }
        public int? Worktime1 { get; set; }
    }
}
