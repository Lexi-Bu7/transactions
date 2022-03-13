using Logic;
using Microsoft.AspNetCore.Mvc;
using Models;

namespace API.Controllers;

[ApiController]
[Route("[controller]")]
public class TransactionController : ControllerBase
{
    private readonly ILogger<TransactionController> _logger;
    private readonly ITransactionManager _transactionManager;

    public TransactionController(ILogger<TransactionController> logger, ITransactionManager transactionManager)
    {
        _logger = logger;
        _transactionManager = transactionManager;
    }

    [HttpGet]
    public IAsyncEnumerable<Transaction> GetTransactions()
    {
        return _transactionManager.GetTransactions();
    }
}
