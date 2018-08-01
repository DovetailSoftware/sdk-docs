_NewEnum(FCSession)_
--------------------

**Object and Type**

Object  :               FCSession

Type     : Method

#### Description

Within the FCSession object, there is a method available for enumerating the available FCBulk objects.

Within the FCBulk object, there is a method available for enumerating the available FCGeneric objects.

Using these enumerators gives you access to all of the available FCBulk and FCGeneric objects.

**Example**

The following example demonstrates looping through and showing details about each FCBulk and each FCGeneric object.

**JavaScript:**
```
Response.Write('Open FCBulks and FCGenerics:');
for(var objEnum = new Enumerator(FCSession);
   !objEnum.atEnd(); objEnum.moveNext()) {
       bulk = objEnum.item();
       Response.Write('<br>FCBulk Name="' + bulk.name + '"');
       for(var objEnum2 = new Enumerator(bulk);
          !objEnum2.atEnd(); objEnum2.moveNext()) {
              gen = objEnum2.item();                             
              Response.Write('<br>&bull;DB Object Type=' +
                             gen.dbobjectname);
       }
}
```

**Visual Basic:**
```
For Each Bulk In fc_session
  Debug.Print "Bulk Name = " + Bulk.Name
  For Each Generic In Bulk
    Debug.Print "Generic DB Object Type = " + Generic.DbObjectName
  Next Generic
Next Bulk
```