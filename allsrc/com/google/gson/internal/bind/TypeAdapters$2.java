package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.BitSet;

final class TypeAdapters$2 extends TypeAdapter<BitSet>
{
  public final BitSet read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    BitSet localBitSet = new BitSet();
    paramJsonReader.beginArray();
    JsonToken localJsonToken = paramJsonReader.peek();
    int i = 0;
    if (localJsonToken != JsonToken.END_ARRAY)
    {
      boolean bool;
      switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
      {
      default:
        throw new JsonSyntaxException("Invalid bitset value type: " + localJsonToken);
      case 1:
        if (paramJsonReader.nextInt() == 0)
          break;
        bool = true;
      case 2:
      case 3:
      }
      while (true)
      {
        if (bool)
          localBitSet.set(i);
        i++;
        localJsonToken = paramJsonReader.peek();
        break;
        bool = false;
        continue;
        bool = paramJsonReader.nextBoolean();
        continue;
        String str = paramJsonReader.nextString();
        try
        {
          int j = Integer.parseInt(str);
          if (j != 0)
          {
            bool = true;
            continue;
          }
          bool = false;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + str);
        }
      }
    }
    paramJsonReader.endArray();
    return localBitSet;
  }

  public final void write(JsonWriter paramJsonWriter, BitSet paramBitSet)
  {
    if (paramBitSet == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    int i = 0;
    if (i < paramBitSet.length())
    {
      if (paramBitSet.get(i));
      int k;
      for (int j = 1; ; k = 0)
      {
        paramJsonWriter.value(j);
        i++;
        break;
      }
    }
    paramJsonWriter.endArray();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.2
 * JD-Core Version:    0.6.0
 */