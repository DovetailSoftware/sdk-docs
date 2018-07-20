### FulfillCommitment(Int32) Method

Log Objid of the log to be fulfilled.

Fulfills a previously unfulfilled commitment. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function FulfillCommitment( _
   ByVal _logObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult FulfillCommitment( 
   int _logObjid_
)
```

#### Parameters

_logObjid_

Log Objid of the log to be fulfilled.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~FulfillCommitment.md)