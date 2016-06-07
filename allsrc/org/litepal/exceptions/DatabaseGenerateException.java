package org.litepal.exceptions;

public class DatabaseGenerateException extends RuntimeException
{
  public static final String CLASS_NOT_FOUND = "can not find a class named ";
  public static final String SQL_ERROR = "An exception that indicates there was an error with SQL parsing or execution. ";
  public static final String SQL_SYNTAX_ERROR = "SQL syntax error happens while executing ";
  public static final String TABLE_DOES_NOT_EXIST = "Table doesn't exist with the name of ";
  public static final String TABLE_DOES_NOT_EXIST_WHEN_EXECUTING = "Table doesn't exist when executing ";
  private static final long serialVersionUID = 1L;

  public DatabaseGenerateException(String paramString)
  {
    super(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.exceptions.DatabaseGenerateException
 * JD-Core Version:    0.6.0
 */