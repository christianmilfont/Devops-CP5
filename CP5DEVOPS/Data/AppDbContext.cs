using CP5DEVOPS.Domain;
using Microsoft.EntityFrameworkCore;

namespace CP5DEVOPS.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Game> Games { get; set; }
    }

}
