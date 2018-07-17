     DispatchQuote(DispatchQuoteSetup) Method                                                   

fcSDK Documentation

DispatchQuote(DispatchQuoteSetup) Method

Setup object for API invocation.

Dispatch the Quote to the specified queue. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchQuote( _
   ByVal _setupParam_ As [DispatchQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchQuoteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchQuote( 
   [DispatchQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchQuoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Quote must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchQuote.md)  
[DispatchQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchQuoteSetup.md)