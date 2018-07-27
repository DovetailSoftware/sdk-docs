### CreatePartRequestDetailSetup Constructor(String,Int32,Int32)

Parent Part Request Header Identifier

The number of parts requested

The Objid of the Site Part to which this Part Request will be linked.

Initializes a new instance of the CreatePartRequestDetailSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestHeaderIDNum_ As String, _
   ByVal _quantity_ As Integer, _
   ByVal _sitePartObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreatePartRequestDetailSetup( 
   string _partRequestHeaderIDNum_,
   int _quantity_,
   int _sitePartObjid_
)
```

#### Parameters

_partRequestHeaderIDNum_

Parent Part Request Header Identifier

_quantity_

The number of parts requested

_sitePartObjid_

The Objid of the Site Part to which this Part Request will be linked.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePartRequestDetailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md)  
[CreatePartRequestDetailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~_ctor.md)