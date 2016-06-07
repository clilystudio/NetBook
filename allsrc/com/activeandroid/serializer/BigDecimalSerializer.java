package com.activeandroid.serializer;

import java.math.BigDecimal;

public final class BigDecimalSerializer extends TypeSerializer
{
  public final BigDecimal deserialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return new BigDecimal((String)paramObject);
  }

  public final Class<?> getDeserializedType()
  {
    return BigDecimal.class;
  }

  public final Class<?> getSerializedType()
  {
    return String.class;
  }

  public final String serialize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return ((BigDecimal)paramObject).toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.BigDecimalSerializer
 * JD-Core Version:    0.6.0
 */