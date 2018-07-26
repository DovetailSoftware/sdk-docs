### CreatePartRequestDetailSetup Constructor(String,String,String,String,Int32)

Parent Part Request Header Identifier

The Part Request number

The Part Request domain

The Part Request revision

The number of parts requested

Initializes a new instance of the CreatePartRequestDetailSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestHeaderIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _quantity_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreatePartRequestDetailSetup( 
   string _partRequestHeaderIDNum_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   int _quantity_
)
```
```

#### Parameters

_partRequestHeaderIDNum_

Parent Part Request Header Identifier

_partNumber_

The Part Request number

_partDomain_

The Part Request domain

_partRevision_

The Part Request revision

_quantity_

The number of parts requested

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePartRequestDetailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md)  
[CreatePartRequestDetailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~_ctor.md)