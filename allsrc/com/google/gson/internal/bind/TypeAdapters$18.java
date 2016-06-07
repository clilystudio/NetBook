package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.net.URL;

final class TypeAdapters$18 extends TypeAdapter<URL>
{
  public final URL read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
      paramJsonReader.nextNull();
    String str;
    do
    {
      return null;
      str = paramJsonReader.nextString();
    }
    while ("null".equals(str));
    return new URL(str);
  }

  public final void write(JsonWriter paramJsonWriter, URL paramURL)
  {
    if (paramURL == null);
    for (String str = null; ; str = paramURL.toExternalForm())
    {
      paramJsonWriter.value(str);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.18
 * JD-Core Version:    0.6.0
 */