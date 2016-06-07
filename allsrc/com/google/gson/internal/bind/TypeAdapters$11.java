package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

final class TypeAdapters$11 extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
    {
    case 2:
    case 3:
    default:
      throw new JsonSyntaxException("Expecting number, got: " + localJsonToken);
    case 4:
      paramJsonReader.nextNull();
      return null;
    case 1:
    }
    return new LazilyParsedNumber(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    paramJsonWriter.value(paramNumber);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.11
 * JD-Core Version:    0.6.0
 */