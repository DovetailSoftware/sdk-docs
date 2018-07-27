### TraverseFromParent Method (FCSession)

#### Syntax

```vbnet
'Declaration

Public Function TraverseFromParent( _
   ByRef _generic_ As IFCGeneric, _
   ByVal _objectType_ As String, _
   ByVal _dataFields_ As String, _
   ByVal _bulkName_ As String, _
   ByVal _parentGeneric_ As IFCGeneric, _
   ByVal _relationName_ As String _
) As IFCGeneric
```

```csharp
public IFCGeneric TraverseFromParent( 
   ref IFCGeneric _generic_,
   string _objectType_,
   string _dataFields_,
   string _bulkName_,
   IFCGeneric _parentGeneric_,
   string _relationName_
)
```

#### Parameters

_generic_

_objectType_

_dataFields_

_bulkName_

_parentGeneric_

_relationName_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession.md)  
[FCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession_members.md)