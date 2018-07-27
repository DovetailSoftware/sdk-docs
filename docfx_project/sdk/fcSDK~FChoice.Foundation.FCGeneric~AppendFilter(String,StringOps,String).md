### AppendFilter(String,StringOps,String) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the [StringOps](fcSDK~FChoice.Foundation.StringOps.md) enumeration.

The filter is being applied against this value.

Adds a filter to constrain the results of an **FCGeneric** Query against a **String** DataField.

#### Syntax

```vbnet
'Declaration

Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As StringOps, _
   ByVal _value_ As String _
) 
```

```csharp
public void AppendFilter( 
   string _fieldName_,
   StringOps _operation_,
   string _value_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the [StringOps](fcSDK~FChoice.Foundation.StringOps.md) enumeration.

_value_

The filter is being applied against this value.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)