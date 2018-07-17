     IsWarranty Property                                                   

fcSDK Documentation

IsWarranty Property

Flag to set the contract line items' default start state to one day past the end of the part's warranty period (true) or not (false).

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property IsWarranty As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool IsWarranty {get; set;}

Remarks

For service parts, the "end of warranty" is the service end date.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup.md)  
[CreateContractSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup_members.md)