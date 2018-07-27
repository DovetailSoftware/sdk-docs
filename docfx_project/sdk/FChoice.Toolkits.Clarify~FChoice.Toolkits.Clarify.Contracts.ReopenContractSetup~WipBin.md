### WipBin Property (ReopenContractSetup)

The WipBin to place the Contract in.  If not set, the contract is placed in the user’s default WipBin.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property WipBin As String
```

```csharp
[PropertyBitValueAttribute()]
public string WipBin {get; set;}
```

#### Remarks

If left blank, the default WIPBin for the user is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReopenContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ReopenContractSetup.md)  
[ReopenContractSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ReopenContractSetup_members.md)