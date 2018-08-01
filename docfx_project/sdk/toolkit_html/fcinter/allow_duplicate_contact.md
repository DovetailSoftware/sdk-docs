allow_duplicate_contact
-------------------------

```
Property allow_duplicate_contact As Boolean
```

#### Description

This is a property on the base FCINTER class object. By default, it is set to False. If this property is set to True, the _create_contact_ and _upate_contact_ APIs will allow you to create or update a contact to the same first_name, last_name, and phone number as another contact in the database. Note that this only works if you change the unique index (defined by default in Clarify) to be non-unique.

#### Examples

Create a duplicate contact to one already in the database.

  allow_duplicate_contact = True

  ret_int = fc_inter.create_contact("Joe", "Blow", "1234", "1", "", "", _
        "joe@blow.com", "", "", "", "", "", 0, "", 0, "", "", "", "", "", "")
