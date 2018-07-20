### UpdateCaseCommitment(String,DateTime,Int32) Method

Identifier of the Case.

DateTime of when the commitment is due.

Objid of the commitment to update.

Updates a commitment against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function UpdateCaseCommitment( _
   ByVal _caseIDNum_ As String, _
   ByVal _commitmentDate_ As Date, _
   ByVal _commitmentObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateCaseCommitment( 
   string _caseIDNum_,
   DateTime _commitmentDate_,
   int _commitmentObjid_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case.

_commitmentDate_

DateTime of when the commitment is due.

_commitmentObjid_

Objid of the commitment to update.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateCaseCommitment.md)