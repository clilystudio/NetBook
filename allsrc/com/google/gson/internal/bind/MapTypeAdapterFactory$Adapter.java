package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class MapTypeAdapterFactory$Adapter<K, V> extends TypeAdapter<Map<K, V>>
{
  private final ObjectConstructor<? extends Map<K, V>> constructor;
  private final TypeAdapter<K> keyTypeAdapter;
  private final TypeAdapter<V> valueTypeAdapter;

  public MapTypeAdapterFactory$Adapter(Gson paramGson, Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ObjectConstructor<? extends Map<K, V>> paramObjectConstructor)
  {
    this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramType2, paramTypeAdapter);
    this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramObjectConstructor, paramTypeAdapter1);
    Object localObject;
    this.constructor = localObject;
  }

  private String keyToString(JsonElement paramJsonElement)
  {
    if (paramJsonElement.isJsonPrimitive())
    {
      JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
      if (localJsonPrimitive.isNumber())
        return String.valueOf(localJsonPrimitive.getAsNumber());
      if (localJsonPrimitive.isBoolean())
        return Boolean.toString(localJsonPrimitive.getAsBoolean());
      if (localJsonPrimitive.isString())
        return localJsonPrimitive.getAsString();
      throw new AssertionError();
    }
    if (paramJsonElement.isJsonNull())
      return "null";
    throw new AssertionError();
  }

  public final Map<K, V> read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    if (localJsonToken == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Map localMap = (Map)this.constructor.construct();
    if (localJsonToken == JsonToken.BEGIN_ARRAY)
    {
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext())
      {
        paramJsonReader.beginArray();
        Object localObject2 = this.keyTypeAdapter.read(paramJsonReader);
        if (localMap.put(localObject2, this.valueTypeAdapter.read(paramJsonReader)) != null)
          throw new JsonSyntaxException("duplicate key: " + localObject2);
        paramJsonReader.endArray();
      }
      paramJsonReader.endArray();
      return localMap;
    }
    paramJsonReader.beginObject();
    while (paramJsonReader.hasNext())
    {
      JsonReaderInternalAccess.INSTANCE.promoteNameToValue(paramJsonReader);
      Object localObject1 = this.keyTypeAdapter.read(paramJsonReader);
      if (localMap.put(localObject1, this.valueTypeAdapter.read(paramJsonReader)) == null)
        continue;
      throw new JsonSyntaxException("duplicate key: " + localObject1);
    }
    paramJsonReader.endObject();
    return localMap;
  }

  public final void write(JsonWriter paramJsonWriter, Map<K, V> paramMap)
  {
    int i = 0;
    if (paramMap == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    if (!MapTypeAdapterFactory.access$000(this.this$0))
    {
      paramJsonWriter.beginObject();
      Iterator localIterator2 = paramMap.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
        paramJsonWriter.name(String.valueOf(localEntry2.getKey()));
        this.valueTypeAdapter.write(paramJsonWriter, localEntry2.getValue());
      }
      paramJsonWriter.endObject();
      return;
    }
    ArrayList localArrayList1 = new ArrayList(paramMap.size());
    ArrayList localArrayList2 = new ArrayList(paramMap.size());
    Iterator localIterator1 = paramMap.entrySet().iterator();
    int j = 0;
    if (localIterator1.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
      JsonElement localJsonElement = this.keyTypeAdapter.toJsonTree(localEntry1.getKey());
      localArrayList1.add(localJsonElement);
      localArrayList2.add(localEntry1.getValue());
      if ((localJsonElement.isJsonArray()) || (localJsonElement.isJsonObject()));
      for (int k = 1; ; k = 0)
      {
        j = k | j;
        break;
      }
    }
    if (j != 0)
    {
      paramJsonWriter.beginArray();
      while (i < localArrayList1.size())
      {
        paramJsonWriter.beginArray();
        Streams.write((JsonElement)localArrayList1.get(i), paramJsonWriter);
        this.valueTypeAdapter.write(paramJsonWriter, localArrayList2.get(i));
        paramJsonWriter.endArray();
        i++;
      }
      paramJsonWriter.endArray();
      return;
    }
    paramJsonWriter.beginObject();
    while (i < localArrayList1.size())
    {
      paramJsonWriter.name(keyToString((JsonElement)localArrayList1.get(i)));
      this.valueTypeAdapter.write(paramJsonWriter, localArrayList2.get(i));
      i++;
    }
    paramJsonWriter.endObject();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.MapTypeAdapterFactory.Adapter
 * JD-Core Version:    0.6.0
 */