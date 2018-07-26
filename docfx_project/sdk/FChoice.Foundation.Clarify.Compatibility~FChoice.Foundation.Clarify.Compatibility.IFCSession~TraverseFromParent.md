### TraverseFromParent Method (IFCSession)

Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743881)>
Function TraverseFromParent( _
   ByRef _generic_ As IFCGeneric, _
   ByVal _objectType_ As String, _
   ByVal _dataFields_ As String, _
   ByVal _bulkName_ As String, _
   ByVal _the_parent_ As IFCGeneric, _
   ByVal _relation_ As String _
) As IFCGeneric
```

```csharp
[DispIdAttribute(1610743881)]
IFCGeneric TraverseFromParent( 
   out IFCGeneric _generic_,
   string _objectType_,
   string _dataFields_,
   string _bulkName_,
   IFCGeneric _the_parent_,
   string _relation_
)
```

#### Parameters

_generic_

_objectType_

_dataFields_

_bulkName_

_the_parent_

_relation_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)