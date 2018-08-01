_Log(FCApplication)_
--------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Sub Log(TheMessageType As String, TheMessage As String)
```

#### Description

This method allows you to log a message to the FCFL log file. FCApplication logging must be turned on for this message to actually be logged to the file.                                                                

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheMessageType | Yes | The type of message, used to identify your message within the log file. |
| TheMessage | Yes | The message to be logged. |

**Example**

The following example logs a message to the log file.

**Visual Basic:**

The code in this example is written in Visual Basic

fc_app.Log "My Company", "This is a test message"

**JavaScript:**

The code in this example is written in JavaScript.

fc_app.Log("My Company", "This is a test message");

Here is an example of what the entry will look like in the log file:

10/27/2003 11:59:12 AM : My Company

This is a test message