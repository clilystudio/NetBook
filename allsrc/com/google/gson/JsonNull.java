package com.google.gson;

public final class JsonNull extends JsonElement
{
  public static final JsonNull INSTANCE = new JsonNull();

  final JsonNull deepCopy()
  {
    return INSTANCE;
  }

  public final boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject instanceof JsonNull));
  }

  public final int hashCode()
  {
    return JsonNull.class.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonNull
 * JD-Core Version:    0.6.0
 */