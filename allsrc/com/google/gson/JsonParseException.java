package com.google.gson;

public class JsonParseException extends RuntimeException
{
  static final long serialVersionUID = -4086729973971783390L;

  public JsonParseException(String paramString)
  {
    super(paramString);
  }

  public JsonParseException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public JsonParseException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonParseException
 * JD-Core Version:    0.6.0
 */