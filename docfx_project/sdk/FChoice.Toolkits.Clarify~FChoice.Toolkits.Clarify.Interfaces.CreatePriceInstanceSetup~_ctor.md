     CreatePriceInstanceSetup Constructor                                                   

fcSDK Documentation

CreatePriceInstanceSetup Constructor

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
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _priceType_ As [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md), _
   ByVal _pricedQuantity_ As [Integer](#), _
   ByVal _price_ As [Decimal](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public CreatePriceInstanceSetup( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceProgram_,
   [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md) _priceType_,
   [int](#) _pricedQuantity_,
   [decimal](#) _price_
)

#### Parameters

_partNumber_

Part number to price

_partDomain_

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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md)  
[CreatePriceInstanceSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup_members.md)