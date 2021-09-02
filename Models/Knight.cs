using System;
using System.Collections.Generic;
namespace knightsTale.Models
{
    public class Knight
    {
        public int Id { get; set; }
        // [Required]
        public string Name { get; set; }
        public string Gender { get; set; }
        public int Age { get; set; }
        public int YearsOfService { get; set; }
        // [Required]
        public int CastleId { get; set; }
    }
}