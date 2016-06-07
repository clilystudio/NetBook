package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ObjectTypeAdapter extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new ObjectTypeAdapter.1();
  private final Gson gson;

  private ObjectTypeAdapter(Gson paramGson)
  {
    this.gson = paramGson;
  }

  public final Object read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    switch (ObjectTypeAdapter.2.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
    {
    default:
      throw new IllegalStateException();
    case 1:
      ArrayList localArrayList = new ArrayList();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext())
        localArrayList.add(read(paramJsonReader));
      paramJsonReader.endArray();
      return localArrayList;
    case 2:
      LinkedTreeMap localLinkedTreeMap = new LinkedTreeMap();
      paramJsonReader.beginObject();
      while (paramJsonReader.hasNext())
        localLinkedTreeMap.put(paramJsonReader.nextName(), read(paramJsonReader));
      paramJsonReader.endObject();
      return localLinkedTreeMap;
    case 3:
      return paramJsonReader.nextString();
    case 4:
      return Double.valueOf(paramJsonReader.nextDouble());
    case 5:
      return Boolean.valueOf(paramJsonReader.nextBoolean());
    case 6:
    }
    paramJsonReader.nextNull();
    return null;
  }

  public final void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    TypeAdapter localTypeAdapter = this.gson.getAdapter(paramObject.getClass());
    if ((localTypeAdapter instanceof ObjectTypeAdapter))
    {
      paramJsonWriter.beginObject();
      paramJsonWriter.endObject();
      return;
    }
    localTypeAdapter.write(paramJsonWriter, paramObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ObjectTypeAdapter
 * JD-Core Version:    0.6.0
 */