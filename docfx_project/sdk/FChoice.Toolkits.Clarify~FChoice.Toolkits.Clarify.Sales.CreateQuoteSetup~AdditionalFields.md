### AdditionalFields Property (CreateQuoteSetup)

Allows the specification of additional fields to be updated as part of API invocation.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public ReadOnly Property AdditionalFields As AdditionalFields
```

```csharp
[PropertyBitValueAttribute()]
public AdditionalFields AdditionalFields {get;}
```

#### Remarks

Additional fields may be set on either the contract or contr_schedule table. To set a field on table_contract, just use the field name. To set a field on the contr_schedule table, place “sched:” before the name of the field. For example, to set the “x_foo” field on the contr_schedule table, use a field name of “sched:x_foo”.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup.md)  
[CreateQuoteSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteSetup_members.md)