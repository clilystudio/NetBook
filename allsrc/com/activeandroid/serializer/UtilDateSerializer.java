package com.activeandroid.serializer;

import java.util.Date;

public final class UtilDateSerializer extends TypeSerializer
{
  public final Date deserialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return new Date(((Long)paramObject).longValue());
  }

  public final Class<?> getDeserializedType()
  {
    return Date.class;
  }

  public final Class<?> getSerializedType()
  {
    return Long.TYPE;
  }

  public final Long serialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return Long.valueOf(((Date)paramObject).getTime());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.UtilDateSerializer
 * JD-Core Version:    0.6.0
 */