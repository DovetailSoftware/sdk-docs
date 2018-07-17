     UpdateSubcaseCommitment(String,DateTime,Int32) Method                                                   

fcSDK Documentation

UpdateSubcaseCommitment(String,DateTime,Int32) Method

Subcase Identifier.

DateTime of when the commitment is due.

Objid of the commitment to update.

Updates a commitment against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateSubcaseCommitment( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _commitmentDate_ As [Date](#), _
   ByVal _commitmentObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateSubcaseCommitment( 
   string _subcaseIDNum_,
   [DateTime](#) _commitmentDate_,
   [int](#) _commitmentObjid_
)

#### Parameters

_subcaseIDNum_

Subcase Identifier.

_commitmentDate_

DateTime of when the commitment is due.

_commitmentObjid_

Objid of the commitment to update.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateSubcaseCommitment.md)