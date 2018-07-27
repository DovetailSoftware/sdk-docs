### UpdatePriceInstanceSetup Constructor

Part number to price

Domain of the part

Revision to price

Name of the price program

How many units in this price instance.

Price of the part

Date when the Price was updated, any Date between the start and end date is valid.

Initializes a new instance of the UpdatePriceInstanceSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _pricedQuantity_ As Integer, _
   ByVal _price_ As Decimal, _
   ByVal _updateDate_ As Date _
)
```

```csharp
[ConstructorIndexAttribute()]
public UpdatePriceInstanceSetup( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceProgram_,
   int _pricedQuantity_,
   decimal _price_,
   DateTime _updateDate_
)
```

#### Parameters

_partNumber_

Part number to price

_partDomain_

Domain of the part

_partRevision_

Revision to price

_priceProgram_

Name of the price program

_pricedQuantity_

How many units in this price instance.

_price_

Price of the part

_updateDate_

Date when the Price was updated, any Date between the start and end date is valid.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdatePriceInstanceSetup.md)  
[UpdatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdatePriceInstanceSetup_members.md)