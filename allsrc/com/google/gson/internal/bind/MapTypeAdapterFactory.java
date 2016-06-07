package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;

public final class MapTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;

  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.complexMapKeySerialization = paramBoolean;
  }

  private TypeAdapter<?> getKeyAdapter(Gson paramGson, Type paramType)
  {
    if ((paramType == Boolean.TYPE) || (paramType == Boolean.class))
      return TypeAdapters.BOOLEAN_AS_STRING;
    return paramGson.getAdapter(TypeToken.get(paramType));
  }

  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    if (!Map.class.isAssignableFrom(paramTypeToken.getRawType()))
      return null;
    Type[] arrayOfType = .Gson.Types.getMapKeyAndValueTypes(localType, .Gson.Types.getRawType(localType));
    TypeAdapter localTypeAdapter1 = getKeyAdapter(paramGson, arrayOfType[0]);
    TypeAdapter localTypeAdapter2 = paramGson.getAdapter(TypeToken.get(arrayOfType[1]));
    ObjectConstructor localObjectConstructor = this.constructorConstructor.get(paramTypeToken);
    return new MapTypeAdapterFactory.Adapter(this, paramGson, arrayOfType[0], localTypeAdapter1, arrayOfType[1], localTypeAdapter2, localObjectConstructor);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.MapTypeAdapterFactory
 * JD-Core Version:    0.6.0
 */