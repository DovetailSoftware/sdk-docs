     PartTransferSetup Constructor(String,String,String,Int32,Location,Location)                                                   

fcSDK Documentation

PartTransferSetup Constructor(String,String,String,Int32,Location,Location)

Part number for the Part Request

Part revision for the Part Request

Part domain for the Part Request

The number of parts being transferred

Inventory location (or expense GL) and bin from which to transfer the part

Inventory location and bin (or GL account) into which the part is being transferred

Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _quantity_ As [Integer](#), _
   ByVal _fromlocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _tolocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public PartTransferSetup( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   [int](#) _quantity_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _fromlocation_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _tolocation_
)

#### Parameters

_partNumber_

Part number for the Part Request

_partRevision_

Part revision for the Part Request

_partDomain_

Part domain for the Part Request

_quantity_

The number of parts being transferred

_fromlocation_

Inventory location (or expense GL) and bin from which to transfer the part

_tolocation_

Inventory location and bin (or GL account) into which the part is being transferred

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md)  
[PartTransferSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup~_ctor.md)