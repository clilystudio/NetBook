package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder
  implements TypeAdapterFactory, Cloneable
{
  public static final Excluder DEFAULT = new Excluder();
  private static final double IGNORE_VERSIONS = -1.0D;
  private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();
  private int modifiers = 136;
  private boolean requireExpose;
  private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
  private boolean serializeInnerClasses = true;
  private double version = -1.0D;

  private boolean isAnonymousOrLocal(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }

  private boolean isInnerClass(Class<?> paramClass)
  {
    return (paramClass.isMemberClass()) && (!isStatic(paramClass));
  }

  private boolean isStatic(Class<?> paramClass)
  {
    return (0x8 & paramClass.getModifiers()) != 0;
  }

  private boolean isValidSince(Since paramSince)
  {
    return (paramSince == null) || (paramSince.value() <= this.version);
  }

  private boolean isValidUntil(Until paramUntil)
  {
    return (paramUntil == null) || (paramUntil.value() > this.version);
  }

  private boolean isValidVersion(Since paramSince, Until paramUntil)
  {
    return (isValidSince(paramSince)) && (isValidUntil(paramUntil));
  }

  protected final Excluder clone()
  {
    try
    {
      Excluder localExcluder = (Excluder)super.clone();
      return localExcluder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }

  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    boolean bool1 = excludeClass(localClass, true);
    boolean bool2 = excludeClass(localClass, false);
    if ((!bool1) && (!bool2))
      return null;
    return new Excluder.1(this, bool2, bool1, paramGson, paramTypeToken);
  }

  public final Excluder disableInnerClassSerialization()
  {
    Excluder localExcluder = clone();
    localExcluder.serializeInnerClasses = false;
    return localExcluder;
  }

  public final boolean excludeClass(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.version != -1.0D) && (!isValidVersion((Since)paramClass.getAnnotation(Since.class), (Until)paramClass.getAnnotation(Until.class))))
      return true;
    if ((!this.serializeInnerClasses) && (isInnerClass(paramClass)))
      return true;
    if (isAnonymousOrLocal(paramClass))
      return true;
    if (paramBoolean);
    for (List localList = this.serializationStrategies; ; localList = this.deserializationStrategies)
    {
      Iterator localIterator = localList.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (!((ExclusionStrategy)localIterator.next()).shouldSkipClass(paramClass));
      return true;
    }
    return false;
  }

  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    if ((this.modifiers & paramField.getModifiers()) != 0)
      return true;
    if ((this.version != -1.0D) && (!isValidVersion((Since)paramField.getAnnotation(Since.class), (Until)paramField.getAnnotation(Until.class))))
      return true;
    if (paramField.isSynthetic())
      return true;
    if (this.requireExpose)
    {
      Expose localExpose = (Expose)paramField.getAnnotation(Expose.class);
      if (localExpose != null)
      {
        if (!paramBoolean)
          break label100;
        if (localExpose.serialize())
          break label110;
      }
      label100: 
      do
        return true;
      while (!localExpose.deserialize());
    }
    label110: if ((!this.serializeInnerClasses) && (isInnerClass(paramField.getType())))
      return true;
    if (isAnonymousOrLocal(paramField.getType()))
      return true;
    if (paramBoolean);
    for (List localList = this.serializationStrategies; !localList.isEmpty(); localList = this.deserializationStrategies)
    {
      FieldAttributes localFieldAttributes = new FieldAttributes(paramField);
      Iterator localIterator = localList.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (!((ExclusionStrategy)localIterator.next()).shouldSkipField(localFieldAttributes));
      return true;
    }
    return false;
  }

  public final Excluder excludeFieldsWithoutExposeAnnotation()
  {
    Excluder localExcluder = clone();
    localExcluder.requireExpose = true;
    return localExcluder;
  }

  public final Excluder withExclusionStrategy(ExclusionStrategy paramExclusionStrategy, boolean paramBoolean1, boolean paramBoolean2)
  {
    Excluder localExcluder = clone();
    if (paramBoolean1)
    {
      localExcluder.serializationStrategies = new ArrayList(this.serializationStrategies);
      localExcluder.serializationStrategies.add(paramExclusionStrategy);
    }
    if (paramBoolean2)
    {
      localExcluder.deserializationStrategies = new ArrayList(this.deserializationStrategies);
      localExcluder.deserializationStrategies.add(paramExclusionStrategy);
    }
    return localExcluder;
  }

  public final Excluder withModifiers(int[] paramArrayOfInt)
  {
    int i = 0;
    Excluder localExcluder = clone();
    localExcluder.modifiers = 0;
    int j = paramArrayOfInt.length;
    while (i < j)
    {
      localExcluder.modifiers = (paramArrayOfInt[i] | localExcluder.modifiers);
      i++;
    }
    return localExcluder;
  }

  public final Excluder withVersion(double paramDouble)
  {
    Excluder localExcluder = clone();
    localExcluder.version = paramDouble;
    return localExcluder;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.Excluder
 * JD-Core Version:    0.6.0
 */