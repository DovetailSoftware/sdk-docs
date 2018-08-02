_IsDBTraveler_
--------------

**Object and Type**

Object  : FCApp

Type     : Property

**Prototype**

```
Public IsDBTraveler As Boolean
```

#### Description

This property tells whether the current database is Traveler-enabled, or not.

**Values**

| Value | Description |
|:--- |:--- |
| FALSE | The database is a normal Clarify database. |
| TRUE | The database is Traveler-enabled. |

**Example**

The example shows using the property.

**Visual Basic:**
```
Debug.Print "Is the database Traveler Enabled? " & _
      CStr(FCApp.IsDBTraveler)
```