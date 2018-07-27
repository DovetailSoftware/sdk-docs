### AppendFilter(String,NumberOps,Decimal) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the NumberOps enumeration.

The filter is being applied against this value.

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).

#### Syntax

```vbnet
'Declaration

Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As NumberOps, _
   ByVal _value_ As Decimal _
) 
```

```csharp
public void AppendFilter( 
   string _fieldName_,
   NumberOps _operation_,
   decimal _value_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the NumberOps enumeration.

_value_

The filter is being applied against this value.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)