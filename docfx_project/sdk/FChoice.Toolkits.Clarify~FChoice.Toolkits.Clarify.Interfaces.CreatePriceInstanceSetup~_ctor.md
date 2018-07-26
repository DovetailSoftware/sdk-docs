### CreatePriceInstanceSetup Constructor

Part number to price

Domain of the part

Revision to price

Domain of the part

The type of price being created.

How many units in this price instance.

Price of the part

Initializes a new instance of the CreatePriceInstanceSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _priceType_ As PriceInstanceType, _
   ByVal _pricedQuantity_ As Integer, _
   ByVal _price_ As Decimal _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreatePriceInstanceSetup( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceProgram_,
   PriceInstanceType _priceType_,
   int _pricedQuantity_,
   decimal _price_
)
```

#### Parameters

_partNumber_

Part number to price

_patDomain_

Domain of the part

_partRevision_

Revision to price

_priceProgram_

Domain of the part

_priceType_

The type of price being created.

_pricedQuantity_

How many units in this price instance.

_price_

Price of the part

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup_members.md)