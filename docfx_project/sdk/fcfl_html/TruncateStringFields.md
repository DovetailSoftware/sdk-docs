_TruncateStringFields_
----------------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

```
Public TruncateStringFields As Boolean
```

#### Description

This property allows you to automatically truncate strings, as you assign them, for all Generics in this session. If it is set to True, **FCFL** will make sure that any string that you set will be truncated at the maximum length of the string field, as determined from the database. This does mean that you can lose data, as you assume that the full string will go into the database.

If the property is set to False (the default), then **FCFL** will attempt to write the entire string to the database. This usually will result in an error being thrown, which you can trap.

The best solution, of course, is to limit the length of your strings in your thick client application, or in your web pages.

**Example**

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The following example attempts to write data to a field defined to a maximum length of 10. An error would be thrown.

FCSession.TruncateStringFields = true;

boCase("x_short_field") = 'abcdefghijklmnopqrstuvwxyz';

The following example does the same thing, but truncates the field at the maximum length (10).

FCSession.TruncateStringFields = false;

boCase("x_short_field") = 'abcdefghijklmnopqrstuvwxyz';