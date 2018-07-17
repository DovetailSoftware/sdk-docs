     UpdatePriceInstance(String,String,String,String,Int32,Decimal,DateTime) Method                                                   

fcSDK Documentation

UpdatePriceInstance(String,String,String,String,Int32,Decimal,DateTime) Method

Part number to price

Domain of the part

Revision to price

Name of the price program

How many units in this price instance.

Price of the part

Date when the Price was updated, any Date between the start and end date is valid.

Update Price Instance. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdatePriceInstance( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _pricedQuantity_ As [Integer](#), _
   ByVal _price_ As [Decimal](#), _
   ByVal _updateDate_ As [Date](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdatePriceInstance( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceProgram_,
   [int](#) _pricedQuantity_,
   [decimal](#) _price_,
   [DateTime](#) _updateDate_
)

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

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PriceInstance.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdatePriceInstance.md)