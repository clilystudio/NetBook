package com.activeandroid.serializer;

public abstract class TypeSerializer
{
  public abstract Object deserialize(Object paramObject);

  public abstract Class<?> getDeserializedType();

  public abstract Class<?> getSerializedType();

  public abstract Object serialize(Object paramObject);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.TypeSerializer
 * JD-Core Version:    0.6.0
 */