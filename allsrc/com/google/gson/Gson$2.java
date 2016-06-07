package com.google.gson;

import java.lang.reflect.Type;

class Gson$2
  implements JsonSerializationContext
{
  public JsonElement serialize(Object paramObject)
  {
    return this.this$0.toJsonTree(paramObject);
  }

  public JsonElement serialize(Object paramObject, Type paramType)
  {
    return this.this$0.toJsonTree(paramObject, paramType);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson.2
 * JD-Core Version:    0.6.0
 */