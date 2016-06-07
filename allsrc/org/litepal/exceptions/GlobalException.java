package org.litepal.exceptions;

public class GlobalException extends RuntimeException
{
  public static final String APPLICATION_CONTEXT_IS_NULL = "Application context is null. Maybe you haven't configured your application name with \"org.litepal.LitePalApplication\" in your AndroidManifest.xml. Or you can call LitePalApplication.initialize(Context) method instead.";
  private static final long serialVersionUID = 1L;

  public GlobalException(String paramString)
  {
    super(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.exceptions.GlobalException
 * JD-Core Version:    0.6.0
 */