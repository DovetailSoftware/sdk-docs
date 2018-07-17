     ChangeCRStatus(String) Method                                                   

fcSDK Documentation

ChangeCRStatus(String) Method

Change Request Identifier

Change the status of a CR. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeCRStatus( _
   ByVal _crIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeCRStatus( 
   string _crIDNum_
)

#### Parameters

_crIDNum_

Change Request Identifier

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The change request may be in any condition, but the new status MUST have the same condition as the change request’s current condition. In other words, you cannot use this API to change the condition of a CR – you must use the proper API (fix, close, reopen) to do that. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The API can also generate a time bomb (for business rule notification).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ChangeCRStatus.md)