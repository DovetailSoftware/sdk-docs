     Find(Object\[\]) Method                                                   

fcSDK Documentation

Find(Object\[\]) Method

An array of primary key values to find. The type of the array is Object.

Gets the row containing the specified primary key values.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function Find( _
   ByVal _keys_() As [Object](#) _
) As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md)

public [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) Find( 
   [object](#)\[\] _keys_
)

#### Parameters

_keys_

An array of primary key values to find. The type of the array is Object.

Remarks

The implementation of Find is delegated to DataRowCollection's [Find](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatarowcollectionclassfindtopic2.htm).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRowCollection~Find.md)