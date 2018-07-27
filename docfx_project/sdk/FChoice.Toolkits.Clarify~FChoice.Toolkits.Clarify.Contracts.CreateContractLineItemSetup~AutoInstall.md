### AutoInstall Property (CreateContractLineItemSetup)

Specifies whether to install the Line Item.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property AutoInstall As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool AutoInstall {get; set;}
```

#### Remarks

If AutoInstall = True, a QuotedSiteIDNum must be supplied.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)  
[CreateContractLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup_members.md)