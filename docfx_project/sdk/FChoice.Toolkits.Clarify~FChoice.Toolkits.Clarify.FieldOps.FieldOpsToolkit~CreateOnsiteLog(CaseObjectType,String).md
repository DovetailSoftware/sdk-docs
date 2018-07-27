### CreateOnsiteLog(CaseObjectType,String) Method

Specifies whether this Onsite Log is tied to a Case or Subcase.

Specifies the Id Number of this Onsite Log's Case or Subcase.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateOnsiteLog( _
   ByVal _objectType_ As CaseObjectType, _
   ByVal _objectIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateOnsiteLog( 
   CaseObjectType _objectType_,
   string _objectIDNum_
)
```

#### Parameters

_objectType_

Specifies whether this Onsite Log is tied to a Case or Subcase.

_objectIDNum_

Specifies the Id Number of this Onsite Log's Case or Subcase.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   Objid \- Objid of the Onsite Log record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateOnsiteLog.md)