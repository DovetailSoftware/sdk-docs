     AdditionalFields Property (CreateQuoteSetup)                                                   

fcSDK Documentation

AdditionalFields Property (CreateQuoteSetup)

Allows the specification of additional fields to be updated as part of API invocation.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public ReadOnly Property AdditionalFields As [AdditionalFields](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFields.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [AdditionalFields](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFields.md) AdditionalFields {get;}

Remarks

Additional fields may be set on either the contract or contr_schedule table. To set a field on table_contract, just use the field name. To set a field on the contr_schedule table, place “sched:” before the name of the field. For example, to set the “x_foo” field on the contr_schedule table, use a field name of “sched:x_foo”.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup.md)  
[CreateQuoteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup_members.md)