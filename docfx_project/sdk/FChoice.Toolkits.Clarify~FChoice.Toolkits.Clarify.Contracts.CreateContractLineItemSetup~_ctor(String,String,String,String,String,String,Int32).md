### CreateContractLineItemSetup Constructor(String,String,String,String,String,String,Int32)

Contract Identifier.

The part number for the Line Item.

The domain of the part for the Line Item.

The revision of the part for the Line Item.

Name of the schedule from the Contract to put the Line Item on.

The serial number of the part for the Line Item.

The objid of the parent Line Item.

Initializes a new instance of the CreateContractLineItemSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _contractIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceSchedule_ As String, _
   ByVal _serialNumber_ As String, _
   ByVal _parentLineItemObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateContractLineItemSetup( 
   string _contractIDNum_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceSchedule_,
   string _serialNumber_,
   int _parentLineItemObjid_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_partNumber_

The part number for the Line Item.

_partDomain_

The domain of the part for the Line Item.

_partRevision_

The revision of the part for the Line Item.

_priceSchedule_

Name of the schedule from the Contract to put the Line Item on.

_serialNumber_

The serial number of the part for the Line Item.

_parentLineItemObjid_

The objid of the parent Line Item.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)  
[CreateContractLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup~_ctor.md)