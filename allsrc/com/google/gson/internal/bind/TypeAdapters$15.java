package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.math.BigInteger;

final class TypeAdapters$15 extends TypeAdapter<BigInteger>
{
  public final BigInteger read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      BigInteger localBigInteger = new BigInteger(paramJsonReader.nextString());
      return localBigInteger;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new JsonSyntaxException(localNumberFormatException);
  }

  public final void write(JsonWriter paramJsonWriter, BigInteger paramBigInteger)
  {
    paramJsonWriter.value(paramBigInteger);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.15
 * JD-Core Version:    0.6.0
 */