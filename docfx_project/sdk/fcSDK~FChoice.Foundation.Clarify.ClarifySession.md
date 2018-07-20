### ClarifySession Class

ClarifySession contains session information for a logged-in user and allows for manipulation of data in the Clarify system as that user.

Syntax

```vbnet
' Declaration
Public Class ClarifySession 
   Inherits [FChoice.Foundation.FCSession](fcSDK~FChoice.Foundation.FCSession.md)

public class ClarifySession : [FChoice.Foundation.FCSession](fcSDK~FChoice.Foundation.FCSession.md) 

Remarks

To create a session, see [ClarifyApplication.CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).

To start accessing data, see the [CreateGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifySession~CreateGeneric.md) method.

FCFL.NET sessions are stateful containers that are used to remember information about a user during their session using the system. They also provide access to manipulate data and settings in the Clarify system.

Inheritance Hierarchy

System.Object  
   [FChoice.Foundation.FCSession](fcSDK~FChoice.Foundation.FCSession.md)  
      **FChoice.Foundation.Clarify.ClarifySession**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify](fcSDK~FChoice.Foundation.Clarify_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)



#### Reference

[ClarifySession Members](fcSDK~FChoice.Foundation.Clarify.ClarifySession_members.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)