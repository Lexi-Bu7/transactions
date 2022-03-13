USE Transactions;
GO

INSERT INTO dbo.Account(
	CreatedOn
	,Name
)VALUES(
	SYSDATETIMEOFFSET()
	,'Buck Discover Debit'
),(
	SYSDATETIMEOFFSET()
	,'Lexi UBT Debit'
),(
	SYSDATETIMEOFFSET()
	,'Fawn Fidelity Checking'
);
GO

INSERT INTO dbo.[Transaction](
	AccountID
	, Amount
	, CreatedOn
	, Description
)VALUES(
	1
	, 1100.00
	, SYSDATETIMEOFFSET()
	, 'M1 Macbook Pro'
), (
	1
	, 21.00
	, SYSDATETIMEOFFSET()
	, 'Birthday gift for Lexi'
), (
	1
	, 350.00
	, SYSDATETIMEOFFSET()
	, 'Birthday gift for me'
), (
	1
	, 468.00
	, SYSDATETIMEOFFSET()
	, 'Birthday gift for Fawn'
), (
	2
	, 1200.00
	, SYSDATETIMEOFFSET()
	, 'Rent'
), (
	2
	, 5000.00
	, SYSDATETIMEOFFSET()
	, 'Divorce lawyer retainer'
), (
	2
	, 280.99
	, SYSDATETIMEOFFSET()
	, 'New shoes'
), (
	3
	, 526.00
	, SYSDATETIMEOFFSET()
	, 'Deluxe giant bag of pig ears'
), (
	3
	, 82.37
	, SYSDATETIMEOFFSET()
	, 'Professional belly rubs'
), (
	3
	, 48000.00
	, SYSDATETIMEOFFSET()
	, 'Dog house in the country'
);
