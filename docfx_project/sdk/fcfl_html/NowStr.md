_NowStr_
--------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Const NowStr = -999
```

#### Description

This is a constant that you may choose to add to your programs. In truth, you can actually use the integer (-999) defined above, but it is better to define the constant.

This constant can be used in your programs if you wish to assign the current date and time to a date/time field. If you do, when the code executes it will place the current date/time in the specified field.

**Example**

**Visual Basic:**

The code in this example is written in Visual Basic.

  Const NowStr = -999

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.Query

  boCase("modify_stmp") = NowStr

  boCase.Update