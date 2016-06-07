package com.google.gson.internal.bind;

import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.net.URI;
import java.net.URISyntaxException;

final class TypeAdapters$19 extends TypeAdapter<URI>
{
  public final URI read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
      paramJsonReader.nextNull();
    while (true)
    {
      return null;
      try
      {
        String str = paramJsonReader.nextString();
        if ("null".equals(str))
          continue;
        URI localURI = new URI(str);
        return localURI;
      }
      catch (URISyntaxException localURISyntaxException)
      {
      }
    }
    throw new JsonIOException(localURISyntaxException);
  }

  public final void write(JsonWriter paramJsonWriter, URI paramURI)
  {
    if (paramURI == null);
    for (String str = null; ; str = paramURI.toASCIIString())
    {
      paramJsonWriter.value(str);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.19
 * JD-Core Version:    0.6.0
 */