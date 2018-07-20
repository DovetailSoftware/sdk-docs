### IsWarranty Property

Flag to set the contract line items' default start state to one day past the end of the part's warranty period (true) or not (false).

Syntax

```vbnet
' Declaration

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property IsWarranty As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool IsWarranty {get; set;}

Remarks

For service parts, the "end of warranty" is the service end date.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CreateContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup.md)  
[CreateContractSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractSetup_members.md)