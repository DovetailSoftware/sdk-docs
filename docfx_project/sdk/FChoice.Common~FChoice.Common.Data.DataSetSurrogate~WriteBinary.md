### WriteBinary Method

The [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) to write to the stream

The stream which will receive the binary from the [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

Writes a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) to a binary stream

Syntax

```vbnet
'Declaration

Public Shared Sub WriteBinary( _
   ByVal _ds_ As DataSet, _
   ByVal _str_ As Stream _
) 
```

```csharp
public static void WriteBinary( 
   DataSet _ds_,
   Stream _str_
)
```

#### Parameters

_ds_

The [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) to write to the stream

_str_

The stream which will receive the binary from the [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

Remarks

[WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) writes the [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) using a specific binary encoding scheme which can only be read by [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md).

[WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) encodes the version of [DataSetSurrogate](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md) that was used to produce the stream so as to avoid version and binary format conflicts with newer or older versions. If [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md) encounters a newer or older stream, it will return null signifying that the cache data is no longer valid and needs to be refreshed.

**IMPORTANT**: The [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md) and [WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) methods only support simple DataSets with tables, columns, rows (with data) and relationships. All other information will be lost. This includes keys, constraints, extended properties, etc

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DataSetSurrogate Class](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md)  
[DataSetSurrogate Members](FChoice.Common~FChoice.Common.Data.DataSetSurrogate_members.md)