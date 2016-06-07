package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class ConstructorConstructor
{
  private final Map<Type, InstanceCreator<?>> instanceCreators;

  public ConstructorConstructor(Map<Type, InstanceCreator<?>> paramMap)
  {
    this.instanceCreators = paramMap;
  }

  private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> paramClass)
  {
    try
    {
      Constructor localConstructor = paramClass.getDeclaredConstructor(new Class[0]);
      if (!localConstructor.isAccessible())
        localConstructor.setAccessible(true);
      ConstructorConstructor.3 local3 = new ConstructorConstructor.3(this, localConstructor);
      return local3;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }

  private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type paramType, Class<? super T> paramClass)
  {
    if (Collection.class.isAssignableFrom(paramClass))
    {
      if (SortedSet.class.isAssignableFrom(paramClass))
        return new ConstructorConstructor.4(this);
      if (EnumSet.class.isAssignableFrom(paramClass))
        return new ConstructorConstructor.5(this, paramType);
      if (Set.class.isAssignableFrom(paramClass))
        return new ConstructorConstructor.6(this);
      if (Queue.class.isAssignableFrom(paramClass))
        return new ConstructorConstructor.7(this);
      return new ConstructorConstructor.8(this);
    }
    if (Map.class.isAssignableFrom(paramClass))
    {
      if (SortedMap.class.isAssignableFrom(paramClass))
        return new ConstructorConstructor.9(this);
      if (((paramType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(TypeToken.get(((ParameterizedType)paramType).getActualTypeArguments()[0]).getRawType())))
        return new ConstructorConstructor.10(this);
      return new ConstructorConstructor.11(this);
    }
    return null;
  }

  private <T> ObjectConstructor<T> newUnsafeAllocator(Type paramType, Class<? super T> paramClass)
  {
    return new ConstructorConstructor.12(this, paramClass, paramType);
  }

  public final <T> ObjectConstructor<T> get(TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    InstanceCreator localInstanceCreator1 = (InstanceCreator)this.instanceCreators.get(localType);
    Object localObject;
    if (localInstanceCreator1 != null)
      localObject = new ConstructorConstructor.1(this, localInstanceCreator1, localType);
    do
    {
      do
      {
        return localObject;
        InstanceCreator localInstanceCreator2 = (InstanceCreator)this.instanceCreators.get(localClass);
        if (localInstanceCreator2 != null)
          return new ConstructorConstructor.2(this, localInstanceCreator2, localType);
        localObject = newDefaultConstructor(localClass);
      }
      while (localObject != null);
      localObject = newDefaultImplementationConstructor(localType, localClass);
    }
    while (localObject != null);
    return (ObjectConstructor<T>)newUnsafeAllocator(localType, localClass);
  }

  public final String toString()
  {
    return this.instanceCreators.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor
 * JD-Core Version:    0.6.0
 */