package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

final class TypeAdapters$16 extends TypeAdapter<StringBuilder>
{
  public final StringBuilder read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuilder(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null);
    for (String str = null; ; str = paramStringBuilder.toString())
    {
      paramJsonWriter.value(str);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.16
 * JD-Core Version:    0.6.0
 */