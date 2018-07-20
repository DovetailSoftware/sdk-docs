### CaseIDNum Property (UpdatePartRequestHeaderSetup)

Identifier of the Case with which this Part Request Header is associated.

Syntax

```vbnet
' Declaration
<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property CaseIDNum As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string CaseIDNum {get; set;}

Remarks

If this property is not set, the existing value will remain. If set to a value other than an empty string, this value will be updated in the database. Otherwise, if this property is set to an empty string the relation from the Case or Subcase to the current Part Request Header will be removed.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[UpdatePartRequestHeaderSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup.md)  
[UpdatePartRequestHeaderSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup_members.md)