     CreateOnsiteLog(CaseObjectType,String) Method                                                   

fcSDK Documentation

CreateOnsiteLog(CaseObjectType,String) Method

Specifies whether this Onsite Log is tied to a Case or Subcase.

Specifies the Id Number of this Onsite Log's Case or Subcase.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateOnsiteLog( _
   ByVal _objectType_ As [CaseObjectType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.CaseObjectType.md), _
   ByVal _objectIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateOnsiteLog( 
   [CaseObjectType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.CaseObjectType.md) _objectType_,
   string _objectIDNum_
)

#### Parameters

_objectType_

Specifies whether this Onsite Log is tied to a Case or Subcase.

_objectIDNum_

Specifies the Id Number of this Onsite Log's Case or Subcase.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Onsite Log record.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateOnsiteLog.md)