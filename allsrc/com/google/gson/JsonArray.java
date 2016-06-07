package com.google.gson;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class JsonArray extends JsonElement
  implements Iterable<JsonElement>
{
  private final List<JsonElement> elements = new ArrayList();

  public final void add(JsonElement paramJsonElement)
  {
    if (paramJsonElement == null)
      paramJsonElement = JsonNull.INSTANCE;
    this.elements.add(paramJsonElement);
  }

  public final void addAll(JsonArray paramJsonArray)
  {
    this.elements.addAll(paramJsonArray.elements);
  }

  final JsonArray deepCopy()
  {
    JsonArray localJsonArray = new JsonArray();
    Iterator localIterator = this.elements.iterator();
    while (localIterator.hasNext())
      localJsonArray.add(((JsonElement)localIterator.next()).deepCopy());
    return localJsonArray;
  }

  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonArray)) && (((JsonArray)paramObject).elements.equals(this.elements)));
  }

  public final JsonElement get(int paramInt)
  {
    return (JsonElement)this.elements.get(paramInt);
  }

  public final BigDecimal getAsBigDecimal()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsBigDecimal();
    throw new IllegalStateException();
  }

  public final BigInteger getAsBigInteger()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsBigInteger();
    throw new IllegalStateException();
  }

  public final boolean getAsBoolean()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsBoolean();
    throw new IllegalStateException();
  }

  public final byte getAsByte()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsByte();
    throw new IllegalStateException();
  }

  public final char getAsCharacter()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsCharacter();
    throw new IllegalStateException();
  }

  public final double getAsDouble()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsDouble();
    throw new IllegalStateException();
  }

  public final float getAsFloat()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsFloat();
    throw new IllegalStateException();
  }

  public final int getAsInt()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsInt();
    throw new IllegalStateException();
  }

  public final long getAsLong()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsLong();
    throw new IllegalStateException();
  }

  public final Number getAsNumber()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsNumber();
    throw new IllegalStateException();
  }

  public final short getAsShort()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsShort();
    throw new IllegalStateException();
  }

  public final String getAsString()
  {
    if (this.elements.size() == 1)
      return ((JsonElement)this.elements.get(0)).getAsString();
    throw new IllegalStateException();
  }

  public final int hashCode()
  {
    return this.elements.hashCode();
  }

  public final Iterator<JsonElement> iterator()
  {
    return this.elements.iterator();
  }

  public final int size()
  {
    return this.elements.size();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonArray
 * JD-Core Version:    0.6.0
 */