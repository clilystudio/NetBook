package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class ArrayTypeAdapter$1
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType1 = paramTypeToken.getType();
    if ((!(localType1 instanceof GenericArrayType)) && ((!(localType1 instanceof Class)) || (!((Class)localType1).isArray())))
      return null;
    Type localType2 = .Gson.Types.getArrayComponentType(localType1);
    return new ArrayTypeAdapter(paramGson, paramGson.getAdapter(TypeToken.get(localType2)), .Gson.Types.getRawType(localType2));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ArrayTypeAdapter.1
 * JD-Core Version:    0.6.0
 */