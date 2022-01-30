using System;
using System.Collections.Generic;

#nullable disable

namespace SetYazilim.EF
{
    public partial class Employee
    {
        public int Id { get; set; }
        public string Tc { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public int TipId { get; set; }
        public decimal? SabitMaas { get; set; }
    }
}
