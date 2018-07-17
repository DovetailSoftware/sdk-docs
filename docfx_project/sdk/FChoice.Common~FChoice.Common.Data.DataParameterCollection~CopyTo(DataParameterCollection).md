     CopyTo(DataParameterCollection) Method                                                   

CopyTo(DataParameterCollection) Method

The destination parameter collection which will receive the contents of this parameter collection.

Copies the parameters in this collection to the specified collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub CopyTo( _
   ByVal _otherCol_ As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _
) 

public void CopyTo( 
   [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _otherCol_
)

#### Parameters

_otherCol_

The destination parameter collection which will receive the contents of this parameter collection.

Remarks

This method performs a shallow copy. That is, each element is **NOT** cloned, but a reference to the same parameter is copied into the destination collection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~CopyTo.md)