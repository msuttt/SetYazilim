using System;
using System.Collections.Generic;

#nullable disable

namespace SetYazilim.EF
{
    public partial class Temptable
    {
        public int Id { get; set; }
        public string Tc { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public decimal Maas { get; set; }
        public string Tip { get; set; }
    }
}
