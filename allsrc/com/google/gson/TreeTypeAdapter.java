package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

final class TreeTypeAdapter<T> extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  private final JsonDeserializer<T> deserializer;
  private final Gson gson;
  private final JsonSerializer<T> serializer;
  private final TypeAdapterFactory skipPast;
  private final TypeToken<T> typeToken;

  private TreeTypeAdapter(JsonSerializer<T> paramJsonSerializer, JsonDeserializer<T> paramJsonDeserializer, Gson paramGson, TypeToken<T> paramTypeToken, TypeAdapterFactory paramTypeAdapterFactory)
  {
    this.serializer = paramJsonSerializer;
    this.deserializer = paramJsonDeserializer;
    this.gson = paramGson;
    this.typeToken = paramTypeToken;
    this.skipPast = paramTypeAdapterFactory;
  }

  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter1 = this.delegate;
    if (localTypeAdapter1 != null)
      return localTypeAdapter1;
    TypeAdapter localTypeAdapter2 = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
    this.delegate = localTypeAdapter2;
    return localTypeAdapter2;
  }

  public static TypeAdapterFactory newFactory(TypeToken<?> paramTypeToken, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, false, null, null);
  }

  public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> paramTypeToken, Object paramObject)
  {
    if (paramTypeToken.getType() == paramTypeToken.getRawType());
    for (boolean bool = true; ; bool = false)
      return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, bool, null, null);
  }

  public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> paramClass, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, null, false, paramClass, null);
  }

  public final T read(JsonReader paramJsonReader)
  {
    if (this.deserializer == null)
      return delegate().read(paramJsonReader);
    JsonElement localJsonElement = Streams.parse(paramJsonReader);
    if (localJsonElement.isJsonNull())
      return null;
    return this.deserializer.deserialize(localJsonElement, this.typeToken.getType(), this.gson.deserializationContext);
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (this.serializer == null)
    {
      delegate().write(paramJsonWriter, paramT);
      return;
    }
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    Streams.write(this.serializer.serialize(paramT, this.typeToken.getType(), this.gson.serializationContext), paramJsonWriter);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.TreeTypeAdapter
 * JD-Core Version:    0.6.0
 */