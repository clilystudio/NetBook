package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T>
{
  private final Gson context;
  private final TypeAdapter<T> delegate;
  private final Type type;

  TypeAdapterRuntimeTypeWrapper(Gson paramGson, TypeAdapter<T> paramTypeAdapter, Type paramType)
  {
    this.context = paramGson;
    this.delegate = paramTypeAdapter;
    this.type = paramType;
  }

  private Type getRuntimeTypeIfMoreSpecific(Type paramType, Object paramObject)
  {
    if ((paramObject != null) && ((paramType == Object.class) || ((paramType instanceof TypeVariable)) || ((paramType instanceof Class))))
      paramType = paramObject.getClass();
    return paramType;
  }

  public final T read(JsonReader paramJsonReader)
  {
    return this.delegate.read(paramJsonReader);
  }

  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    TypeAdapter localTypeAdapter = this.delegate;
    Type localType = getRuntimeTypeIfMoreSpecific(this.type, paramT);
    if (localType != this.type)
    {
      localTypeAdapter = this.context.getAdapter(TypeToken.get(localType));
      if (((localTypeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter)) && (!(this.delegate instanceof ReflectiveTypeAdapterFactory.Adapter)))
        localTypeAdapter = this.delegate;
    }
    localTypeAdapter.write(paramJsonWriter, paramT);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapterRuntimeTypeWrapper
 * JD-Core Version:    0.6.0
 */