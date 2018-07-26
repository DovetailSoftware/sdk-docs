### BeginInitialize Method

The method to be called when the asynchronous initialization is completed.

A user-provided object that distinguishes this particular asynchronous request from other requests.

Begins an asynchronous **ClarifyApplication** initialization.

Syntax

```vbnet
'Declaration

Public Shared Function BeginInitialize( _
   ByVal _callback_ As [AsyncCallback](#), _
   ByVal _state_ As Object _
) As IAsyncResult
```

```csharp
public static IAsyncResult BeginInitialize( 
   AsyncCallback _callback_,
   object _state_
)
```

#### Parameters

_callback_

The method to be called when the asynchronous initialization is completed.

_state_

A user-provided object that distinguishes this particular asynchronous request from other requests.

#### Return Value

An IAsyncResult that references the asynchronous initialization.

Remarks

The **BeginInitialize** method starts an asynchronous initialization of the **ClarifyApplication**.

Your callback method should call [EndInitialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~EndInitialize.md) to complete the operation. Please see the [Asynchronous Design Pattern Overview](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconasynchronousdesignpatternoverview.asp) for more details on using asynchronous methods.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Asynchronous Design Pattern Overview](#)