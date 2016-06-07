package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

final class TypeAdapters$13 extends TypeAdapter<String>
{
  public final String read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    if (localJsonToken == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    if (localJsonToken == JsonToken.BOOLEAN)
      return Boolean.toString(paramJsonReader.nextBoolean());
    return paramJsonReader.nextString();
  }

  public final void write(JsonWriter paramJsonWriter, String paramString)
  {
    paramJsonWriter.value(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.13
 * JD-Core Version:    0.6.0
 */