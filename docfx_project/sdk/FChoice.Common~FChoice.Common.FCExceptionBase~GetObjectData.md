### GetObjectData Method

The object that holds the serialized object data.

The contextual information about the source or destination.

Sets the [SerializationInfo](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemruntimeserializationserializationinfoclasstopic.htm) object with the parameter name and additional exception information.

Syntax

```vbnet
'Declaration
Public Overrides Sub GetObjectData( _
   ByVal _info_ As SerializationInfo, _
   ByVal _context_ As StreamingContext _
) 
```

```csharp
public override void GetObjectData( 
   SerializationInfo _info_,
   StreamingContext _context_
)
```

#### Parameters

_info_

The object that holds the serialized object data.

_context_

The contextual information about the source or destination.

Remarks

**GetObjectData** sets a [SerializationInfo](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemruntimeserializationserializationinfoclasstopic.htm) with all the exception object data targeted for serialization. During deserialization, the exception object is reconstituted from the **SerializationInfo** transmitted over the stream.

For more information, see **SerializationInfo**.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)  
**Base Implementation in GetObjectData**