//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuangBaDuLich.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tour
    {
        public Tour()
        {
            this.DatTours = new HashSet<DatTour>();
            this.HanhTrinhs = new HashSet<HanhTrinh>();
        }
    
        public int Id { get; set; }
        public string LichTrinh { get; set; }
        public Nullable<System.DateTime> KhoiHanh { get; set; }
        public Nullable<int> GiaThanh { get; set; }
        public string ImagesUrl { get; set; }
    
        public virtual ICollection<DatTour> DatTours { get; set; }
        public virtual ICollection<HanhTrinh> HanhTrinhs { get; set; }
    }
}
