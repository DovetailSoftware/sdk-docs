### RelateToIntField Method

The [row](fcSDK~FChoice.Foundation.GenericDataRow.md) whose unique Id will be put into the current row's Integer field.

Name of the Integer field which will receive the unique identifier of the **otherRow.**

Relate a given row's identifier to an Integer field present on this GenericDataRow.

#### Syntax

```vbnet
'Declaration

Public Sub RelateToIntField( _
   ByVal _otherRow_ As GenericDataRow, _
   ByVal _intFieldName_ As String _
) 
```

```csharp
public void RelateToIntField( 
   GenericDataRow _otherRow_,
   string _intFieldName_
)
```

#### Parameters

_otherRow_

The [row](fcSDK~FChoice.Foundation.GenericDataRow.md) whose unique Id will be put into the current row's Integer field.

_intFieldName_

Name of the Integer field which will receive the unique identifier of the **otherRow.**

#### Remarks

This relation method does not require that there be a relation present between the two rows being related. It is recommended that you use [RelateRecord](fcSDK~FChoice.Foundation.GenericDataRow~RelateRecord.md) whenever possible.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)