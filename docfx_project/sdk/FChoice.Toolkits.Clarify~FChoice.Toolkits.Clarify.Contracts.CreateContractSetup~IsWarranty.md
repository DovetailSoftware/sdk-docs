### IsWarranty Property

Flag to set the contract line items' default start state to one day past the end of the part's warranty period (true) or not (false).

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property IsWarranty As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool IsWarranty {get; set;}
```

#### Remarks

For service parts, the "end of warranty" is the service end date.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup.md)  
[CreateContractSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup_members.md)