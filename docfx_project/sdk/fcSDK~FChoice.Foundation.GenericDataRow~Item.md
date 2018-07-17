     Item Property (GenericDataRow)                                                   

fcSDK Documentation

Item Property (GenericDataRow)

Gets or sets data stored in a specified column.

\[C#\] In C#, this property is the indexer for the **GenericDataRow** class.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shadows Default Property Item( _
   ByVal _column_ As [DataColumn](#), _
   ByVal _version_ As [DataRowVersion](#) _
) As [Object](#)

public new [object](#) this\[ 
   [DataColumn](#) _column_,
   [DataRowVersion](#) _version_
\]; {get; set;}

#### Parameters

_column_

_version_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)