### PartTransferSetup Constructor(String,String,String,String,Location,Location)

Part number for the Part Request

Part revision for the Part Request

Part domain for the Part Request

The serial number of the part being transferred

Inventory location (or expense GL) and bin from which to transfer the part

Inventory location and bin (or GL account) into which the part is being transferred

Initializes a new instance of the PartTransferSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _serialNumber_ As String, _
   ByVal _fromlocation_ As Location, _
   ByVal _tolocation_ As Location _
)
```

```csharp
[ConstructorIndexAttribute()]
public PartTransferSetup( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _serialNumber_,
   Location _fromlocation_,
   Location _tolocation_
)
```

#### Parameters

_partNumber_

Part number for the Part Request

_partRevision_

Part revision for the Part Request

_partDomain_

Part domain for the Part Request

_serialNumber_

The serial number of the part being transferred

_fromlocation_

Inventory location (or expense GL) and bin from which to transfer the part

_tolocation_

Inventory location and bin (or GL account) into which the part is being transferred

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup.md)  
[PartTransferSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup~_ctor.md)