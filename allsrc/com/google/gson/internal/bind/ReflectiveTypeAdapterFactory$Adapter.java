package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory$Adapter<T> extends TypeAdapter<T>
{
  private final Map<String, ReflectiveTypeAdapterFactory.BoundField> boundFields;
  private final ObjectConstructor<T> constructor;

  private ReflectiveTypeAdapterFactory$Adapter(ObjectConstructor<T> paramObjectConstructor, Map<String, ReflectiveTypeAdapterFactory.BoundField> paramMap)
  {
    this.constructor = paramObjectConstructor;
    this.boundFields = paramMap;
  }

  public final T read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Object localObject = this.constructor.construct();
    try
    {
      paramJsonReader.beginObject();
      while (true)
      {
        if (!paramJsonReader.hasNext())
          break label111;
        String str = paramJsonReader.nextName();
        localBoundField = (ReflectiveTypeAdapterFactory.BoundField)this.boundFields.get(str);
        if ((localBoundField != null) && (localBoundField.deserialized))
          break;
        paramJsonReader.skipValue();
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
      {
        ReflectiveTypeAdapterFactory.BoundField localBoundField;
        throw new JsonSyntaxException(localIllegalStateException);
        localBoundField.read(paramJsonReader, localObject);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    label111: paramJsonReader.endObject();
    return localObject;
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginObject();
    try
    {
      Iterator localIterator = this.boundFields.values().iterator();
      while (localIterator.hasNext())
      {
        ReflectiveTypeAdapterFactory.BoundField localBoundField = (ReflectiveTypeAdapterFactory.BoundField)localIterator.next();
        if (!localBoundField.serialized)
          continue;
        paramJsonWriter.name(localBoundField.name);
        localBoundField.write(paramJsonWriter, paramT);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError();
    }
    paramJsonWriter.endObject();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
 * JD-Core Version:    0.6.0
 */