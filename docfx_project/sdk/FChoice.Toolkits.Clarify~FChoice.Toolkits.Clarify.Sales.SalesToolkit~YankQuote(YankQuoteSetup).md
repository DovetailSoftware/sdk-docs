### YankQuote(YankQuoteSetup) Method

Setup object for API invocation.

Yank the Quote from its current location to a new owner's WipBin. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function YankQuote( _
   ByVal _setupParam_ YankQuoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult YankQuote( 
   YankQuoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The WipBin to place the Quote in may also be specified. This is augmented function from base Clarify, where the Quote is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~YankQuote.md)  
[YankQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.YankQuoteSetup.md)