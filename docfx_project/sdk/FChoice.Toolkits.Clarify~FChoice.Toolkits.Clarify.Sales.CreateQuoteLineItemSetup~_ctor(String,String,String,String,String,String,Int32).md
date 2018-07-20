### CreateQuoteLineItemSetup Constructor(String,String,String,String,String,String,Int32)

Quote/Contract Identifier.

The part number for this line item.

The domain of the part for this line item.

The revision of the part for this line item.

The name of the Price Schedule for this line item.

For a serialized part, the serial number referenced by this line item.

The objid of the parent line item.

Initializes a new instance of the CreateQuoteLineItemSetup class. This overload takes a set of required parameters for the API.

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
public CreateQuoteLineItemSetup( 
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

Quote/Contract Identifier.

_partNumber_

The part number for this line item.

_partDomain_

The domain of the part for this line item.

_partRevision_

The revision of the part for this line item.

_priceSchedule_

The name of the Price Schedule for this line item.

_serialNumber_

For a serialized part, the serial number referenced by this line item.

_parentLineItemObjid_

The objid of the parent line item.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateQuoteLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup.md)  
[CreateQuoteLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup~_ctor.md)