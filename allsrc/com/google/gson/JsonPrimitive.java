package com.google.gson;

import com.google.gson.internal..Gson.Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive extends JsonElement
{
  private static final Class<?>[] PRIMITIVE_TYPES;
  private Object value;

  static
  {
    Class[] arrayOfClass = new Class[16];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Long.TYPE;
    arrayOfClass[2] = Short.TYPE;
    arrayOfClass[3] = Float.TYPE;
    arrayOfClass[4] = Double.TYPE;
    arrayOfClass[5] = Byte.TYPE;
    arrayOfClass[6] = Boolean.TYPE;
    arrayOfClass[7] = Character.TYPE;
    arrayOfClass[8] = Integer.class;
    arrayOfClass[9] = Long.class;
    arrayOfClass[10] = Short.class;
    arrayOfClass[11] = Float.class;
    arrayOfClass[12] = Double.class;
    arrayOfClass[13] = Byte.class;
    arrayOfClass[14] = Boolean.class;
    arrayOfClass[15] = Character.class;
    PRIMITIVE_TYPES = arrayOfClass;
  }

  public JsonPrimitive(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }

  public JsonPrimitive(Character paramCharacter)
  {
    setValue(paramCharacter);
  }

  public JsonPrimitive(Number paramNumber)
  {
    setValue(paramNumber);
  }

  JsonPrimitive(Object paramObject)
  {
    setValue(paramObject);
  }

  public JsonPrimitive(String paramString)
  {
    setValue(paramString);
  }

  private static boolean isIntegral(JsonPrimitive paramJsonPrimitive)
  {
    if ((paramJsonPrimitive.value instanceof Number))
    {
      Number localNumber = (Number)paramJsonPrimitive.value;
      return ((localNumber instanceof BigInteger)) || ((localNumber instanceof Long)) || ((localNumber instanceof Integer)) || ((localNumber instanceof Short)) || ((localNumber instanceof Byte));
    }
    return false;
  }

  private static boolean isPrimitiveOrString(Object paramObject)
  {
    if ((paramObject instanceof String))
      return true;
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = PRIMITIVE_TYPES;
    int i = arrayOfClass.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label47;
      if (arrayOfClass[j].isAssignableFrom(localClass))
        break;
    }
    label47: return false;
  }

  final JsonPrimitive deepCopy()
  {
    return this;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    JsonPrimitive localJsonPrimitive;
    while (true)
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      localJsonPrimitive = (JsonPrimitive)paramObject;
      if (this.value == null)
        if (localJsonPrimitive.value != null)
          return false;
      if ((isIntegral(this)) && (isIntegral(localJsonPrimitive)))
        if (getAsNumber().longValue() != localJsonPrimitive.getAsNumber().longValue())
          return false;
      if ((!(this.value instanceof Number)) || (!(localJsonPrimitive.value instanceof Number)))
        break;
      double d1 = getAsNumber().doubleValue();
      double d2 = localJsonPrimitive.getAsNumber().doubleValue();
      if ((d1 != d2) && ((!Double.isNaN(d1)) || (!Double.isNaN(d2))))
        return false;
    }
    return this.value.equals(localJsonPrimitive.value);
  }

  public final BigDecimal getAsBigDecimal()
  {
    if ((this.value instanceof BigDecimal))
      return (BigDecimal)this.value;
    return new BigDecimal(this.value.toString());
  }

  public final BigInteger getAsBigInteger()
  {
    if ((this.value instanceof BigInteger))
      return (BigInteger)this.value;
    return new BigInteger(this.value.toString());
  }

  public final boolean getAsBoolean()
  {
    if (isBoolean())
      return getAsBooleanWrapper().booleanValue();
    return Boolean.parseBoolean(getAsString());
  }

  final Boolean getAsBooleanWrapper()
  {
    return (Boolean)this.value;
  }

  public final byte getAsByte()
  {
    if (isNumber())
      return getAsNumber().byteValue();
    return Byte.parseByte(getAsString());
  }

  public final char getAsCharacter()
  {
    return getAsString().charAt(0);
  }

  public final double getAsDouble()
  {
    if (isNumber())
      return getAsNumber().doubleValue();
    return Double.parseDouble(getAsString());
  }

  public final float getAsFloat()
  {
    if (isNumber())
      return getAsNumber().floatValue();
    return Float.parseFloat(getAsString());
  }

  public final int getAsInt()
  {
    if (isNumber())
      return getAsNumber().intValue();
    return Integer.parseInt(getAsString());
  }

  public final long getAsLong()
  {
    if (isNumber())
      return getAsNumber().longValue();
    return Long.parseLong(getAsString());
  }

  public final Number getAsNumber()
  {
    if ((this.value instanceof String))
      return new LazilyParsedNumber((String)this.value);
    return (Number)this.value;
  }

  public final short getAsShort()
  {
    if (isNumber())
      return getAsNumber().shortValue();
    return Short.parseShort(getAsString());
  }

  public final String getAsString()
  {
    if (isNumber())
      return getAsNumber().toString();
    if (isBoolean())
      return getAsBooleanWrapper().toString();
    return (String)this.value;
  }

  public final int hashCode()
  {
    if (this.value == null)
      return 31;
    if (isIntegral(this))
    {
      long l2 = getAsNumber().longValue();
      return (int)(l2 ^ l2 >>> 32);
    }
    if ((this.value instanceof Number))
    {
      long l1 = Double.doubleToLongBits(getAsNumber().doubleValue());
      return (int)(l1 ^ l1 >>> 32);
    }
    return this.value.hashCode();
  }

  public final boolean isBoolean()
  {
    return this.value instanceof Boolean;
  }

  public final boolean isNumber()
  {
    return this.value instanceof Number;
  }

  public final boolean isString()
  {
    return this.value instanceof String;
  }

  final void setValue(Object paramObject)
  {
    if ((paramObject instanceof Character))
    {
      this.value = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    if (((paramObject instanceof Number)) || (isPrimitiveOrString(paramObject)));
    for (boolean bool = true; ; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      this.value = paramObject;
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonPrimitive
 * JD-Core Version:    0.6.0
 */