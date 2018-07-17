     ChangeQuoteStatus(String) Method                                                   

fcSDK Documentation

ChangeQuoteStatus(String) Method

Quote Identifier.

Cause the specified Quote to have its status changed. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeQuoteStatus( _
   ByVal _quoteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeQuoteStatus( 
   string _quoteIDNum_
)

#### Parameters

_quoteIDNum_

Quote Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeQuoteStatus.md)