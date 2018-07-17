     AppendFilter(String,StringOps,String) Method                                                   

fcSDK Documentation

AppendFilter(String,StringOps,String) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the [StringOps](fcSDK~FChoice.Foundation.StringOps.md) enumeration.

The filter is being applied against this value.

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a **String** [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As [StringOps](fcSDK~FChoice.Foundation.StringOps.md), _
   ByVal _value_ As String _
) 

public void AppendFilter( 
   string _fieldName_,
   [StringOps](fcSDK~FChoice.Foundation.StringOps.md) _operation_,
   string _value_
)

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the [StringOps](fcSDK~FChoice.Foundation.StringOps.md) enumeration.

_value_

The filter is being applied against this value.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)