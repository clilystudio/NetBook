package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonTreeReader extends JsonReader
{
  private static final Object SENTINEL_CLOSED;
  private static final Reader UNREADABLE_READER = new JsonTreeReader.1();
  private final List<Object> stack = new ArrayList();

  static
  {
    SENTINEL_CLOSED = new Object();
  }

  public JsonTreeReader(JsonElement paramJsonElement)
  {
    super(UNREADABLE_READER);
    this.stack.add(paramJsonElement);
  }

  private void expect(JsonToken paramJsonToken)
  {
    if (peek() != paramJsonToken)
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + peek());
  }

  private Object peekStack()
  {
    return this.stack.get(-1 + this.stack.size());
  }

  private Object popStack()
  {
    return this.stack.remove(-1 + this.stack.size());
  }

  public final void beginArray()
  {
    expect(JsonToken.BEGIN_ARRAY);
    JsonArray localJsonArray = (JsonArray)peekStack();
    this.stack.add(localJsonArray.iterator());
  }

  public final void beginObject()
  {
    expect(JsonToken.BEGIN_OBJECT);
    JsonObject localJsonObject = (JsonObject)peekStack();
    this.stack.add(localJsonObject.entrySet().iterator());
  }

  public final void close()
  {
    this.stack.clear();
    this.stack.add(SENTINEL_CLOSED);
  }

  public final void endArray()
  {
    expect(JsonToken.END_ARRAY);
    popStack();
    popStack();
  }

  public final void endObject()
  {
    expect(JsonToken.END_OBJECT);
    popStack();
    popStack();
  }

  public final boolean hasNext()
  {
    JsonToken localJsonToken = peek();
    return (localJsonToken != JsonToken.END_OBJECT) && (localJsonToken != JsonToken.END_ARRAY);
  }

  public final boolean nextBoolean()
  {
    expect(JsonToken.BOOLEAN);
    return ((JsonPrimitive)popStack()).getAsBoolean();
  }

  public final double nextDouble()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING))
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    double d = ((JsonPrimitive)peekStack()).getAsDouble();
    if ((!isLenient()) && ((Double.isNaN(d)) || (Double.isInfinite(d))))
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d);
    popStack();
    return d;
  }

  public final int nextInt()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING))
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    int i = ((JsonPrimitive)peekStack()).getAsInt();
    popStack();
    return i;
  }

  public final long nextLong()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING))
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    long l = ((JsonPrimitive)peekStack()).getAsLong();
    popStack();
    return l;
  }

  public final String nextName()
  {
    expect(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)peekStack()).next();
    this.stack.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }

  public final void nextNull()
  {
    expect(JsonToken.NULL);
    popStack();
  }

  public final String nextString()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.STRING) && (localJsonToken != JsonToken.NUMBER))
      throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + localJsonToken);
    return ((JsonPrimitive)popStack()).getAsString();
  }

  public final JsonToken peek()
  {
    Object localObject;
    while (true)
    {
      if (this.stack.isEmpty())
        return JsonToken.END_DOCUMENT;
      localObject = peekStack();
      if (!(localObject instanceof Iterator))
        break;
      boolean bool = this.stack.get(-2 + this.stack.size()) instanceof JsonObject;
      Iterator localIterator = (Iterator)localObject;
      if (localIterator.hasNext())
      {
        if (bool)
          return JsonToken.NAME;
        this.stack.add(localIterator.next());
        continue;
      }
      if (bool)
        return JsonToken.END_OBJECT;
      return JsonToken.END_ARRAY;
    }
    if ((localObject instanceof JsonObject))
      return JsonToken.BEGIN_OBJECT;
    if ((localObject instanceof JsonArray))
      return JsonToken.BEGIN_ARRAY;
    if ((localObject instanceof JsonPrimitive))
    {
      JsonPrimitive localJsonPrimitive = (JsonPrimitive)localObject;
      if (localJsonPrimitive.isString())
        return JsonToken.STRING;
      if (localJsonPrimitive.isBoolean())
        return JsonToken.BOOLEAN;
      if (localJsonPrimitive.isNumber())
        return JsonToken.NUMBER;
      throw new AssertionError();
    }
    if ((localObject instanceof JsonNull))
      return JsonToken.NULL;
    if (localObject == SENTINEL_CLOSED)
      throw new IllegalStateException("JsonReader is closed");
    throw new AssertionError();
  }

  public final void promoteNameToValue()
  {
    expect(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)peekStack()).next();
    this.stack.add(localEntry.getValue());
    this.stack.add(new JsonPrimitive((String)localEntry.getKey()));
  }

  public final void skipValue()
  {
    if (peek() == JsonToken.NAME)
    {
      nextName();
      return;
    }
    popStack();
  }

  public final String toString()
  {
    return getClass().getSimpleName();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.JsonTreeReader
 * JD-Core Version:    0.6.0
 */