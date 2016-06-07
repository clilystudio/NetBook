package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

final class TypeAdapters$3 extends TypeAdapter<Boolean>
{
  public final Boolean read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    if (paramJsonReader.peek() == JsonToken.STRING)
      return Boolean.valueOf(Boolean.parseBoolean(paramJsonReader.nextString()));
    return Boolean.valueOf(paramJsonReader.nextBoolean());
  }

  public final void write(JsonWriter paramJsonWriter, Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.value(paramBoolean.booleanValue());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.3
 * JD-Core Version:    0.6.0
 */