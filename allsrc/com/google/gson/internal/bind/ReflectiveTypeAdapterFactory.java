package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal..Gson.Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  private final Excluder excluder;
  private final FieldNamingStrategy fieldNamingPolicy;

  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.fieldNamingPolicy = paramFieldNamingStrategy;
    this.excluder = paramExcluder;
  }

  private ReflectiveTypeAdapterFactory.BoundField createBoundField(Gson paramGson, Field paramField, String paramString, TypeToken<?> paramTypeToken, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new ReflectiveTypeAdapterFactory.1(this, paramString, paramBoolean1, paramBoolean2, paramGson, paramTypeToken, paramField, Primitives.isPrimitive(paramTypeToken.getRawType()));
  }

  private Map<String, ReflectiveTypeAdapterFactory.BoundField> getBoundFields(Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface())
      return localLinkedHashMap;
    Type localType1 = paramTypeToken.getType();
    while (paramClass != Object.class)
    {
      for (Field localField : paramClass.getDeclaredFields())
      {
        boolean bool1 = excludeField(localField, true);
        boolean bool2 = excludeField(localField, false);
        if ((!bool1) && (!bool2))
          continue;
        localField.setAccessible(true);
        Type localType2 = .Gson.Types.resolve(paramTypeToken.getType(), paramClass, localField.getGenericType());
        ReflectiveTypeAdapterFactory.BoundField localBoundField1 = createBoundField(paramGson, localField, getFieldName(localField), TypeToken.get(localType2), bool1, bool2);
        ReflectiveTypeAdapterFactory.BoundField localBoundField2 = (ReflectiveTypeAdapterFactory.BoundField)localLinkedHashMap.put(localBoundField1.name, localBoundField1);
        if (localBoundField2 == null)
          continue;
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + localBoundField2.name);
      }
      paramTypeToken = TypeToken.get(.Gson.Types.resolve(paramTypeToken.getType(), paramClass, paramClass.getGenericSuperclass()));
      paramClass = paramTypeToken.getRawType();
    }
    return localLinkedHashMap;
  }

  private String getFieldName(Field paramField)
  {
    SerializedName localSerializedName = (SerializedName)paramField.getAnnotation(SerializedName.class);
    if (localSerializedName == null)
      return this.fieldNamingPolicy.translateName(paramField);
    return localSerializedName.value();
  }

  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!Object.class.isAssignableFrom(localClass))
      return null;
    return new ReflectiveTypeAdapterFactory.Adapter(this.constructorConstructor.get(paramTypeToken), getBoundFields(paramGson, paramTypeToken, localClass), null);
  }

  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return (!this.excluder.excludeClass(paramField.getType(), paramBoolean)) && (!this.excluder.excludeField(paramField, paramBoolean));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
 * JD-Core Version:    0.6.0
 */