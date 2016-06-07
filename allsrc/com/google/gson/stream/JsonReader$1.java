package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;

final class JsonReader$1 extends JsonReaderInternalAccess
{
  public final void promoteNameToValue(JsonReader paramJsonReader)
  {
    if ((paramJsonReader instanceof JsonTreeReader))
    {
      ((JsonTreeReader)paramJsonReader).promoteNameToValue();
      return;
    }
    int i = JsonReader.access$000(paramJsonReader);
    if (i == 0)
      i = JsonReader.access$100(paramJsonReader);
    if (i == 13)
    {
      JsonReader.access$002(paramJsonReader, 9);
      return;
    }
    if (i == 12)
    {
      JsonReader.access$002(paramJsonReader, 8);
      return;
    }
    if (i == 14)
    {
      JsonReader.access$002(paramJsonReader, 10);
      return;
    }
    throw new IllegalStateException("Expected a name but was " + paramJsonReader.peek() + "  at line " + JsonReader.access$200(paramJsonReader) + " column " + JsonReader.access$300(paramJsonReader));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.stream.JsonReader.1
 * JD-Core Version:    0.6.0
 */