     Find(Object) Method                                                   

fcSDK Documentation

Find(Object) Method

The primary key value of the [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) to find.

Gets the row specified by the primary key value.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function Find( _
   ByVal _key_ As [Object](#) _
) As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md)

public [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) Find( 
   [object](#) _key_
)

#### Parameters

_key_

The primary key value of the [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) to find.

Remarks

The implementation of Find is delegated to DataRowCollection's [Find](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatarowcollectionclassfindtopic1.htm).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRowCollection~Find.md)