namespace Models
{
    public class Transaction
    {
        public int TransactionID { get; set; }

        public int AccountID { get; set; }

        public decimal Amount { get; set; }

        public DateTimeOffset CreatedOn { get; set; }
        
        public string Description { get; set; }
    }
}
