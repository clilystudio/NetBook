package org.json.alipay;

public class JSONException extends Exception
{
  private Throwable cause;

  public JSONException(String paramString)
  {
    super(paramString);
  }

  public JSONException(Throwable paramThrowable)
  {
    super(paramThrowable.getMessage());
    this.cause = paramThrowable;
  }

  public Throwable getCause()
  {
    return this.cause;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.json.alipay.JSONException
 * JD-Core Version:    0.6.0
 */