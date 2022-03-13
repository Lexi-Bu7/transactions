using DataAccess;
using Models;

namespace Logic
{
    public class TransactionManager : ITransactionManager
    {
        private readonly DataContext _context;

        public TransactionManager(DataContext context)
        {
            _context = context;
        }

        public IAsyncEnumerable<Transaction> GetTransactions()
        {
            return _context.Transaction.AsAsyncEnumerable();
        }
    }
}