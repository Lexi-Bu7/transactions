using Microsoft.EntityFrameworkCore;
using Models;

namespace DataAccess
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Account> Account { get; set; } = null!;

        public DbSet<Transaction> Transaction { get; set; } = null!;

    }
}