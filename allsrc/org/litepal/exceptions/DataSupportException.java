package org.litepal.exceptions;

public class DataSupportException extends RuntimeException
{
  public static final String ID_TYPE_INVALID_EXCEPTION = "id type is not supported. Only int or long is acceptable for id";
  public static final String INSTANTIATION_EXCEPTION = " needs a default constructor.";
  public static final String MODEL_IS_NOT_AN_INSTANCE_OF_DATA_SUPPORT = " should be inherited from DataSupport";
  public static final String SAVE_FAILED = "Save current model failed.";
  public static final String UPDATE_CONDITIONS_EXCEPTION = "The parameters in conditions are incorrect.";
  public static final String WRONG_FIELD_TYPE_FOR_ASSOCIATIONS = "The field to declare many2one or many2many associations should be List or Set.";
  private static final long serialVersionUID = 1L;

  public DataSupportException(String paramString)
  {
    super(paramString);
  }

  public static String noSuchFieldExceptioin(String paramString1, String paramString2)
  {
    return "The " + paramString2 + " field in " + paramString1 + " class is necessary which does not exist.";
  }

  public static String noSuchMethodException(String paramString1, String paramString2)
  {
    return "The " + paramString2 + " method in " + paramString1 + " class is necessary which does not exist.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.exceptions.DataSupportException
 * JD-Core Version:    0.6.0
 */