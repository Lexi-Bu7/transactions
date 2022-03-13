using Models;

namespace Logic
{
    public interface ITransactionManager
    {
        IAsyncEnumerable<Transaction> GetTransactions();
    }
}