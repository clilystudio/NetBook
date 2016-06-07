package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class TypeAdapters$25 extends TypeAdapter<JsonElement>
{
  public final JsonElement read(JsonReader paramJsonReader)
  {
    switch (TypeAdapters.32.$SwitchMap$com$google$gson$stream$JsonToken[paramJsonReader.peek().ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 3:
      return new JsonPrimitive(paramJsonReader.nextString());
    case 1:
      return new JsonPrimitive(new LazilyParsedNumber(paramJsonReader.nextString()));
    case 2:
      return new JsonPrimitive(Boolean.valueOf(paramJsonReader.nextBoolean()));
    case 4:
      paramJsonReader.nextNull();
      return JsonNull.INSTANCE;
    case 5:
      JsonArray localJsonArray = new JsonArray();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext())
        localJsonArray.add(read(paramJsonReader));
      paramJsonReader.endArray();
      return localJsonArray;
    case 6:
    }
    JsonObject localJsonObject = new JsonObject();
    paramJsonReader.beginObject();
    while (paramJsonReader.hasNext())
      localJsonObject.add(paramJsonReader.nextName(), read(paramJsonReader));
    paramJsonReader.endObject();
    return localJsonObject;
  }

  public final void write(JsonWriter paramJsonWriter, JsonElement paramJsonElement)
  {
    if ((paramJsonElement == null) || (paramJsonElement.isJsonNull()))
    {
      paramJsonWriter.nullValue();
      return;
    }
    if (paramJsonElement.isJsonPrimitive())
    {
      JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
      if (localJsonPrimitive.isNumber())
      {
        paramJsonWriter.value(localJsonPrimitive.getAsNumber());
        return;
      }
      if (localJsonPrimitive.isBoolean())
      {
        paramJsonWriter.value(localJsonPrimitive.getAsBoolean());
        return;
      }
      paramJsonWriter.value(localJsonPrimitive.getAsString());
      return;
    }
    if (paramJsonElement.isJsonArray())
    {
      paramJsonWriter.beginArray();
      Iterator localIterator2 = paramJsonElement.getAsJsonArray().iterator();
      while (localIterator2.hasNext())
        write(paramJsonWriter, (JsonElement)localIterator2.next());
      paramJsonWriter.endArray();
      return;
    }
    if (paramJsonElement.isJsonObject())
    {
      paramJsonWriter.beginObject();
      Iterator localIterator1 = paramJsonElement.getAsJsonObject().entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        paramJsonWriter.name((String)localEntry.getKey());
        write(paramJsonWriter, (JsonElement)localEntry.getValue());
      }
      paramJsonWriter.endObject();
      return;
    }
    throw new IllegalArgumentException("Couldn't write " + paramJsonElement.getClass());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.25
 * JD-Core Version:    0.6.0
 */