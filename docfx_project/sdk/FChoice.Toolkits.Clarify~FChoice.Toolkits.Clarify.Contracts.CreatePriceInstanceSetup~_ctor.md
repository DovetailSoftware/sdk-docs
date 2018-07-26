### CreatePriceInstanceSetup Constructor

The nuber of the part for the Price Instance.

The revision of the part for the Price Instance.

The domain of the part for the Price Instance.

The support program for which this Price Instance is being created.

The title of the Price Program for this Price Instance. If blank then "US Std Price List" will be used.

The price type for the Price Instance.

The quantity of the part for the Price Instance. If not set, it will default to a zero price quantity.

Initializes a new instance of the CreatePriceInstanceSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _supportProgram_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _priceType_ As [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md), _
   ByVal _quantity_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreatePriceInstanceSetup( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _supportProgram_,
   string _priceProgram_,
   [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md) _priceType_,
   int _quantity_
)
```

#### Parameters

_partNumber_

The nuber of the part for the Price Instance.

_partRevision_

The revision of the part for the Price Instance.

_partDomain_

The domain of the part for the Price Instance.

_supportProgram_

The support program for which this Price Instance is being created.

_priceProgram_

The title of the Price Program for this Price Instance. If blank then "US Std Price List" will be used.

_priceType_

The price type for the Price Instance.

_quantity_

The quantity of the part for the Price Instance. If not set, it will default to a zero price quantity.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup_members.md)