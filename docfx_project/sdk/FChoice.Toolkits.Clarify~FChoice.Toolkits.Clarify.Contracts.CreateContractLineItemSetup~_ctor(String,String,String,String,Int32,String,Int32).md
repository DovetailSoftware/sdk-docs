     CreateContractLineItemSetup Constructor(String,String,String,String,Int32,String,Int32)                                                   

fcSDK Documentation

CreateContractLineItemSetup Constructor(String,String,String,String,Int32,String,Int32)

Contract Identifier.

The part number for the Line Item.

The domain of the part for the Line Item.

The revision of the part for the Line Item.

The quantity of the part for the Line Item.

Name of the schedule from the Contract to put the Line Item on.

The objid of the parent Line Item.

Initializes a new instance of the CreateContractLineItemSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _contractIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _quantity_ As [Integer](#), _
   ByVal _priceSchedule_ As String, _
   ByVal _parentLineItemObjid_ As [Integer](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public CreateContractLineItemSetup( 
   string _contractIDNum_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   [int](#) _quantity_,
   string _priceSchedule_,
   [int](#) _parentLineItemObjid_
)

#### Parameters

_contractIDNum_

Contract Identifier.

_partNumber_

The part number for the Line Item.

_partDomain_

The domain of the part for the Line Item.

_partRevision_

The revision of the part for the Line Item.

_quantity_

The quantity of the part for the Line Item.

_priceSchedule_

Name of the schedule from the Contract to put the Line Item on.

_parentLineItemObjid_

The objid of the parent Line Item.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)  
[CreateContractLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup~_ctor.md)