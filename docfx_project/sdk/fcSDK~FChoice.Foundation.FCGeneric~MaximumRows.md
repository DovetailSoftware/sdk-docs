### MaximumRows Property (FCGeneric)

Controls the maximum number of rows to be returned by the Genric Query.

Syntax

```vbnet
'Declaration

Public Property MaximumRows As Integer
```

```csharp
public int MaximumRows {get; set;}
```

[!include[Requirements]emarks

The default value of this property is set by the Generic's [Session.MaximumRows](fcSDK~FChoice.Foundation.FCSession~MaximumRows.md).

When this value is set the default operation will result in the number of rows returned by every [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to **MaximumRows**.

Alternatively the [MaximumRowsExceeded](fcSDK~FChoice.Foundation.FCGeneric~MaximumRowsExceeded_EV.md) event can give greater control of how Queries returning too many rows are handled.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)