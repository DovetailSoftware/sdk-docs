     CreateQuote Method                                                   

fcSDK Documentation

CreateQuote Method

Used to create a new Quote. This overload takes a set of required parameters for the API.

Used to create a new Quote.

Overload List

| Overload | Description |
| --- | --- |
| [CreateQuote(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateQuote(String).md) | Used to create a new Quote. This overload takes a set of required parameters for the API.   |
| [CreateQuote(CreateQuoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateQuote(CreateQuoteSetup).md) | Used to create a new Quote. This overload takes a setup object.   |
| [CreateQuote(CreateQuoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateQuote(CreateQuoteSetup,IDbTransaction).md) | Used to create a new Quote. This overload takes a setup object and a database transaction.   |

Remarks

This API requires that a valid opportunity exists. This differs a little from the Clarify GUI, which creates the opportunity as part of the create quote. That can be done with the APIs, but there is extra flexibility provided.

 As part of creating the contract record for the quote, these APIs also create the default contract schedule and relates the schedule to the contract.

Additional fields may be set on either the contract or contr_schedule table. To set a field on table_contract, just use the field name. To set a field on the contr_schedule table, place “sched:” before the name of the field. For example, to set the “x_foo” field on the contr_schedule table, use a field name of “sched:x_foo”.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[CreateQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup.md)