### CopyTo(DataParameterCollection) Method

The destination parameter collection which will receive the contents of this parameter collection.

Copies the parameters in this collection to the specified collection.

#### Syntax

```vbnet
'Declaration

Public Overloads Sub CopyTo( _
   ByVal _otherCol_ As DataParameterCollection _
) 
```

```csharp
public void CopyTo( 
   DataParameterCollection _otherCol_
)
```

#### Parameters

_otherCol_

The destination parameter collection which will receive the contents of this parameter collection.

#### Remarks

This method performs a shallow copy. That is, each element is **NOT** cloned, but a reference to the same parameter is copied into the destination collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~CopyTo.md)