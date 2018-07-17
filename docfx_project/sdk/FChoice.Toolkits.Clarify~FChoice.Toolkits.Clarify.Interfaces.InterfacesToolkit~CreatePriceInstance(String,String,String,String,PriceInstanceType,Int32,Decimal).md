     CreatePriceInstance(String,String,String,String,PriceInstanceType,Int32,Decimal) Method                                                   

fcSDK Documentation

CreatePriceInstance(String,String,String,String,PriceInstanceType,Int32,Decimal) Method

Part number to price

Domain of the part

Revision to price

Domain of the part

The type of price being created.

How many units in this price instance.

Price of the part

Creates a Price Instance. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreatePriceInstance( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _priceType_ As [PriceInstanceType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PriceInstanceType.md), _
   ByVal _pricedQuantity_ As [Integer](#), _
   ByVal _price_ As [Decimal](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePriceInstance( 
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

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PriceInstance.

Remarks

You many not have two prices (in the same schedule for the same part and quantity) overlap or have the price's [StartDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~StartDate.md) or [EndDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~EndDate.md) extend outside the span of the price program.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance.md)