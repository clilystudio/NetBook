package com.activeandroid.annotation;

public enum Column$ForeignKeyAction
{
  static
  {
    SET_DEFAULT = new ForeignKeyAction("SET_DEFAULT", 1);
    CASCADE = new ForeignKeyAction("CASCADE", 2);
    RESTRICT = new ForeignKeyAction("RESTRICT", 3);
    NO_ACTION = new ForeignKeyAction("NO_ACTION", 4);
    ForeignKeyAction[] arrayOfForeignKeyAction = new ForeignKeyAction[5];
    arrayOfForeignKeyAction[0] = SET_NULL;
    arrayOfForeignKeyAction[1] = SET_DEFAULT;
    arrayOfForeignKeyAction[2] = CASCADE;
    arrayOfForeignKeyAction[3] = RESTRICT;
    arrayOfForeignKeyAction[4] = NO_ACTION;
    $VALUES = arrayOfForeignKeyAction;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.annotation.Column.ForeignKeyAction
 * JD-Core Version:    0.6.0
 */