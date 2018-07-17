     AppendFilter(String,DateOps,DateTime) Method                                                   

fcSDK Documentation

AppendFilter(String,DateOps,DateTime) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the [DateOps](fcSDK~FChoice.Foundation.DateOps.md) enumeration.

The filter is being applied against this **DateTime**.

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a **DateTime** [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As [DateOps](fcSDK~FChoice.Foundation.DateOps.md), _
   ByVal _value_ As [Date](#) _
) 

public void AppendFilter( 
   string _fieldName_,
   [DateOps](fcSDK~FChoice.Foundation.DateOps.md) _operation_,
   [DateTime](#) _value_
)

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the [DateOps](fcSDK~FChoice.Foundation.DateOps.md) enumeration.

_value_

The filter is being applied against this **DateTime**.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)