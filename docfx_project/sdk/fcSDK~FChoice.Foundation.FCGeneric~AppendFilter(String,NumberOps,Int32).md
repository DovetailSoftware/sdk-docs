### AppendFilter(String,NumberOps,Int32) Method

Name of the field the filter will be constraining.

The type of filter being applied. See the [NumberOps](fcSDK~FChoice.Foundation.NumberOps.md) enumeration.

The filter is being applied against this value.

Adds a filter to constrain the results of an **FCGeneric** Query against a numeric DataField.

Syntax

```vbnet
'Declaration
 
Public Overloads Sub AppendFilter( _
   ByVal _fieldName_ As String, _
   ByVal _operation_ As NumberOps, _
   ByVal _value_ As Integer _
) 
```

```csharp
public void AppendFilter( 
   string _fieldName_,
   NumberOps _operation_,
   int _value_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_operation_

The type of filter being applied. See the [NumberOps](fcSDK~FChoice.Foundation.NumberOps.md) enumeration.

_value_

The filter is being applied against this value.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md)