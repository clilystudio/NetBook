package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

final class TypeAdapters$7 extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      Integer localInteger = Integer.valueOf(paramJsonReader.nextInt());
      return localInteger;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new JsonSyntaxException(localNumberFormatException);
  }

  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    paramJsonWriter.value(paramNumber);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.7
 * JD-Core Version:    0.6.0
 */