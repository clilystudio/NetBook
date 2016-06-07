package com.activeandroid.serializer;

import java.util.UUID;

public final class UUIDSerializer extends TypeSerializer
{
  public final UUID deserialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return UUID.fromString((String)paramObject);
  }

  public final Class<?> getDeserializedType()
  {
    return UUID.class;
  }

  public final Class<?> getSerializedType()
  {
    return String.class;
  }

  public final String serialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return ((UUID)paramObject).toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.UUIDSerializer
 * JD-Core Version:    0.6.0
 */