### ReadBinary Method

The stream from which to read the [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

Reads a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) from a binary stream

Syntax

```vbnet
'Declaration

Public Shared Function ReadBinary( _
   ByVal _str_ As Stream _
) As DataSet
```

```csharp
public static DataSet ReadBinary( 
   Stream _str_
)
```

#### Parameters

_str_

The stream from which to read the [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

#### Return Value

A populated [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm), or null (**Nothing** in Visual Basic) if the stream was invalid or written using an older version of [DataSetSurrogate](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md)

Remarks

The binary stream must have been written using the [WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) method as it uses a specific binary encoding scheme.

[WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) encodes the version of [DataSetSurrogate](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md) that was used to produce the stream so as to avoid version and binary format conflicts with newer or older versions. If [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md) encounters a newer or older stream, it will return null (**Nothing** in Visual Basic) signifying that the cache data is no longer valid and needs to be refreshed.

**IMPORTANT**: The [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md) and [WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) methods only support simple DataSets with tables, columns, rows (with data) and relationships. All other information will be lost. This includes keys, constraints, extended properties, etc

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataSetSurrogate Class](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md)  
[DataSetSurrogate Members](FChoice.Common~FChoice.Common.Data.DataSetSurrogate_members.md)