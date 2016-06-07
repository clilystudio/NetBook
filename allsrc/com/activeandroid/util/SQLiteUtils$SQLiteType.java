package com.activeandroid.util;

public enum SQLiteUtils$SQLiteType
{
  static
  {
    BLOB = new SQLiteType("BLOB", 3);
    SQLiteType[] arrayOfSQLiteType = new SQLiteType[4];
    arrayOfSQLiteType[0] = INTEGER;
    arrayOfSQLiteType[1] = REAL;
    arrayOfSQLiteType[2] = TEXT;
    arrayOfSQLiteType[3] = BLOB;
    $VALUES = arrayOfSQLiteType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.SQLiteUtils.SQLiteType
 * JD-Core Version:    0.6.0
 */