package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

final class TypeAdapters$26
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if ((!Enum.class.isAssignableFrom(localClass)) || (localClass == Enum.class))
      return null;
    if (!localClass.isEnum())
      localClass = localClass.getSuperclass();
    return new TypeAdapters.EnumTypeAdapter(localClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.26
 * JD-Core Version:    0.6.0
 */