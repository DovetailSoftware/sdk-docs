### CreatePriceInstance(String,String,String,String,String,PriceInstanceType,Int32) Method

The nuber of the part for the Price Instance.

The revision of the part for the Price Instance.

The domain of the part for the Price Instance.

The support program for which this Price Instance is being created.

The title of the Price Program for this Price Instance. If blank then "US Std Price List" will be used.

The price type for the Price Instance.

The quantity of the part for the Price Instance. If not set, it will default to a zero price quantity.

Used to create a new price instance for a support program. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function CreatePriceInstance( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _supportProgram_ As String, _
   ByVal _priceProgram_ As String, _
   ByVal _priceType_ As PriceInstanceType, _
   ByVal _quantity_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePriceInstance( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _supportProgram_,
   string _priceProgram_,
   PriceInstanceType _priceType_,
   int _quantity_
)
```

#### Parameters

_partNumber_

The nuber of the part for the Price Instance.

_partRevision_

The revision of the part for the Price Instance.

_partDomain_

The domain of the part for the Price Instance.

_supportProgram_

The support program for which this Price Instance is being created.

_priceProgram_

The title of the Price Program for this Price Instance. If blank then "US Std Price List" will be used.

_priceType_

The price type for the Price Instance.

_quantity_

The quantity of the part for the Price Instance. If not set, it will default to a zero price quantity.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   Objid \- Objid of the Price Instance record.

#### Remarks

You may specify the part for product based support programs, or leave it blank when creating price instances for either site or independent support programs.  If you do specify a part, you must include its domain and revision (mod level).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreatePriceInstance.md)