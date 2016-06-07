package com.google.gson;

import java.lang.reflect.Type;

class Gson$1
  implements JsonDeserializationContext
{
  public <T> T deserialize(JsonElement paramJsonElement, Type paramType)
  {
    return this.this$0.fromJson(paramJsonElement, paramType);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson.1
 * JD-Core Version:    0.6.0
 */