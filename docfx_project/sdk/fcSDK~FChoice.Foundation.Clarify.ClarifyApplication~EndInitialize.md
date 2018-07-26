### EndInitialize Method

An IAsyncResult that stores state information and any user defined data for this asynchronous operation.

Ends an asynchronous **ClarifyApplication** initialization.

Syntax

```vbnet
'Declaration

Public Shared Function EndInitialize( _
   ByVal _result_ As IAsyncResult _
) As ClarifyApplication
```

```csharp
public static ClarifyApplication EndInitialize( 
   IAsyncResult _result_
)
```

#### Parameters

_result_

An IAsyncResult that stores state information and any user defined data for this asynchronous operation.

Remarks

**EndInitialize** completes the asynchronous initialization operation started in [BeginInitialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~BeginInitialize.md).

Please see the [Asynchronous Design Pattern Overview](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconasynchronousdesignpatternoverview.asp) for more details on using asynchronous methods.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Asynchronous Design Pattern Overview](#)