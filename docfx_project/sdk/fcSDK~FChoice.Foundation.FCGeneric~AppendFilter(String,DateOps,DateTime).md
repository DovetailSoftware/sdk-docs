### AppendFilter(String,DateOps,DateTime) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the [DateOps](fcSDK~FChoice.Foundation.DateOps.md) enumeration.

The filter is being applied against this **DateTime**.

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a **DateTime** [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).

Syntax

```vbnet
'Declaration

Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As DateOps, _
   ByVal _value_ As Date _
) 
```

```csharp
public void AppendFilter( 
   string _fieldName_,
   DateOps _operation_,
   DateTime _value_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the [DateOps](fcSDK~FChoice.Foundation.DateOps.md) enumeration.

_value_

The filter is being applied against this **DateTime**.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)