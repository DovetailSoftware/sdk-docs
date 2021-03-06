﻿### YankCR(YankCRSetup) Method

Setup object for API invocation.

Yank the CR from its current location to a new owner's WipBin. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function YankCR( _
   ByVal _setupParam_ YankCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult YankCR( 
   YankCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The WipBin to place the CR in may also be specified. This is augmented function from base Clarify, where the CR is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~YankCR.md)  
[YankCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.YankCRSetup.md)