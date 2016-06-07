package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class Gson
{
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
  private final ThreadLocal<Map<TypeToken<?>, Gson.FutureTypeAdapter<?>>> calls = new ThreadLocal();
  private final ConstructorConstructor constructorConstructor;
  final JsonDeserializationContext deserializationContext = new Gson.1(this);
  private final List<TypeAdapterFactory> factories;
  private final boolean generateNonExecutableJson;
  private final boolean htmlSafe;
  private final boolean prettyPrinting;
  final JsonSerializationContext serializationContext = new Gson.2(this);
  private final boolean serializeNulls;
  private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache = Collections.synchronizedMap(new HashMap());

  public Gson()
  {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
  }

  Gson(Excluder paramExcluder, FieldNamingStrategy paramFieldNamingStrategy, Map<Type, InstanceCreator<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, LongSerializationPolicy paramLongSerializationPolicy, List<TypeAdapterFactory> paramList)
  {
    this.constructorConstructor = new ConstructorConstructor(paramMap);
    this.serializeNulls = paramBoolean1;
    this.generateNonExecutableJson = paramBoolean3;
    this.htmlSafe = paramBoolean4;
    this.prettyPrinting = paramBoolean5;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
    localArrayList.add(ObjectTypeAdapter.FACTORY);
    localArrayList.add(paramExcluder);
    localArrayList.addAll(paramList);
    localArrayList.add(TypeAdapters.STRING_FACTORY);
    localArrayList.add(TypeAdapters.INTEGER_FACTORY);
    localArrayList.add(TypeAdapters.BOOLEAN_FACTORY);
    localArrayList.add(TypeAdapters.BYTE_FACTORY);
    localArrayList.add(TypeAdapters.SHORT_FACTORY);
    localArrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, longAdapter(paramLongSerializationPolicy)));
    localArrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(paramBoolean6)));
    localArrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(paramBoolean6)));
    localArrayList.add(TypeAdapters.NUMBER_FACTORY);
    localArrayList.add(TypeAdapters.CHARACTER_FACTORY);
    localArrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
    localArrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
    localArrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
    localArrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
    localArrayList.add(TypeAdapters.URL_FACTORY);
    localArrayList.add(TypeAdapters.URI_FACTORY);
    localArrayList.add(TypeAdapters.UUID_FACTORY);
    localArrayList.add(TypeAdapters.LOCALE_FACTORY);
    localArrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
    localArrayList.add(TypeAdapters.BIT_SET_FACTORY);
    localArrayList.add(DateTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.CALENDAR_FACTORY);
    localArrayList.add(TimeTypeAdapter.FACTORY);
    localArrayList.add(SqlDateTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.TIMESTAMP_FACTORY);
    localArrayList.add(ArrayTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.ENUM_FACTORY);
    localArrayList.add(TypeAdapters.CLASS_FACTORY);
    localArrayList.add(new CollectionTypeAdapterFactory(this.constructorConstructor));
    localArrayList.add(new MapTypeAdapterFactory(this.constructorConstructor, paramBoolean2));
    localArrayList.add(new ReflectiveTypeAdapterFactory(this.constructorConstructor, paramFieldNamingStrategy, paramExcluder));
    this.factories = Collections.unmodifiableList(localArrayList);
  }

  private static void assertFullConsumption(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject != null)
      try
      {
        if (paramJsonReader.peek() != JsonToken.END_DOCUMENT)
          throw new JsonIOException("JSON document was not fully consumed.");
      }
      catch (MalformedJsonException localMalformedJsonException)
      {
        throw new JsonSyntaxException(localMalformedJsonException);
      }
      catch (IOException localIOException)
      {
        throw new JsonIOException(localIOException);
      }
  }

  private void checkValidFloatingPoint(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)))
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
  }

  private TypeAdapter<Number> doubleAdapter(boolean paramBoolean)
  {
    if (paramBoolean)
      return TypeAdapters.DOUBLE;
    return new Gson.3(this);
  }

  private TypeAdapter<Number> floatAdapter(boolean paramBoolean)
  {
    if (paramBoolean)
      return TypeAdapters.FLOAT;
    return new Gson.4(this);
  }

  private TypeAdapter<Number> longAdapter(LongSerializationPolicy paramLongSerializationPolicy)
  {
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT)
      return TypeAdapters.LONG;
    return new Gson.5(this);
  }

  private JsonWriter newJsonWriter(Writer paramWriter)
  {
    if (this.generateNonExecutableJson)
      paramWriter.write(")]}'\n");
    JsonWriter localJsonWriter = new JsonWriter(paramWriter);
    if (this.prettyPrinting)
      localJsonWriter.setIndent("  ");
    localJsonWriter.setSerializeNulls(this.serializeNulls);
    return localJsonWriter;
  }

  public final <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
  {
    Object localObject = fromJson(paramJsonElement, paramClass);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public final <T> T fromJson(JsonElement paramJsonElement, Type paramType)
  {
    if (paramJsonElement == null)
      return null;
    return fromJson(new JsonTreeReader(paramJsonElement), paramType);
  }

  // ERROR //
  public final <T> T fromJson(JsonReader paramJsonReader, Type paramType)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 395	com/google/gson/stream/JsonReader:isLenient	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iload_3
    //   10: invokevirtual 398	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   13: aload_1
    //   14: invokevirtual 278	com/google/gson/stream/JsonReader:peek	()Lcom/google/gson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 404	com/google/gson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    //   25: invokevirtual 408	com/google/gson/Gson:getAdapter	(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    //   28: aload_1
    //   29: invokevirtual 414	com/google/gson/TypeAdapter:read	(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    //   32: astore 10
    //   34: aload_1
    //   35: iload 4
    //   37: invokevirtual 398	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   40: aload 10
    //   42: areturn
    //   43: astore 8
    //   45: iload_3
    //   46: ifeq +11 -> 57
    //   49: aload_1
    //   50: iload 4
    //   52: invokevirtual 398	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   55: aconst_null
    //   56: areturn
    //   57: new 293	com/google/gson/JsonSyntaxException
    //   60: dup
    //   61: aload 8
    //   63: invokespecial 296	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   66: athrow
    //   67: astore 6
    //   69: aload_1
    //   70: iload 4
    //   72: invokevirtual 398	com/google/gson/stream/JsonReader:setLenient	(Z)V
    //   75: aload 6
    //   77: athrow
    //   78: astore 7
    //   80: new 293	com/google/gson/JsonSyntaxException
    //   83: dup
    //   84: aload 7
    //   86: invokespecial 296	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   89: athrow
    //   90: astore 5
    //   92: new 293	com/google/gson/JsonSyntaxException
    //   95: dup
    //   96: aload 5
    //   98: invokespecial 296	com/google/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   101: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   13	18	43	java/io/EOFException
    //   20	34	43	java/io/EOFException
    //   13	18	67	finally
    //   20	34	67	finally
    //   57	67	67	finally
    //   80	90	67	finally
    //   92	102	67	finally
    //   13	18	78	java/lang/IllegalStateException
    //   20	34	78	java/lang/IllegalStateException
    //   13	18	90	java/io/IOException
    //   20	34	90	java/io/IOException
  }

  public final <T> T fromJson(Reader paramReader, Class<T> paramClass)
  {
    JsonReader localJsonReader = new JsonReader(paramReader);
    Object localObject = fromJson(localJsonReader, paramClass);
    assertFullConsumption(localObject, localJsonReader);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public final <T> T fromJson(Reader paramReader, Type paramType)
  {
    JsonReader localJsonReader = new JsonReader(paramReader);
    Object localObject = fromJson(localJsonReader, paramType);
    assertFullConsumption(localObject, localJsonReader);
    return localObject;
  }

  public final <T> T fromJson(String paramString, Class<T> paramClass)
  {
    Object localObject = fromJson(paramString, paramClass);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public final <T> T fromJson(String paramString, Type paramType)
  {
    if (paramString == null)
      return null;
    return fromJson(new StringReader(paramString), paramType);
  }

  public final <T> TypeAdapter<T> getAdapter(TypeToken<T> paramTypeToken)
  {
    Object localObject1 = (TypeAdapter)this.typeTokenCache.get(paramTypeToken);
    if (localObject1 != null)
      return localObject1;
    Map localMap = (Map)this.calls.get();
    Object localObject2;
    if (localMap == null)
    {
      HashMap localHashMap = new HashMap();
      this.calls.set(localHashMap);
      localObject2 = localHashMap;
    }
    for (int i = 1; ; i = 0)
    {
      while (true)
      {
        localObject1 = (Gson.FutureTypeAdapter)((Map)localObject2).get(paramTypeToken);
        if (localObject1 != null)
          break;
        try
        {
          Gson.FutureTypeAdapter localFutureTypeAdapter = new Gson.FutureTypeAdapter();
          ((Map)localObject2).put(paramTypeToken, localFutureTypeAdapter);
          Iterator localIterator = this.factories.iterator();
          while (localIterator.hasNext())
          {
            localObject1 = ((TypeAdapterFactory)localIterator.next()).create(this, paramTypeToken);
            if (localObject1 == null)
              continue;
            localFutureTypeAdapter.setDelegate((TypeAdapter)localObject1);
            this.typeTokenCache.put(paramTypeToken, localObject1);
            return localObject1;
          }
          throw new IllegalArgumentException("GSON cannot handle " + paramTypeToken);
        }
        finally
        {
          ((Map)localObject2).remove(paramTypeToken);
          if (i != 0)
            this.calls.remove();
        }
      }
      localObject2 = localMap;
    }
  }

  public final <T> TypeAdapter<T> getAdapter(Class<T> paramClass)
  {
    return getAdapter(TypeToken.get(paramClass));
  }

  public final <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken)
  {
    Iterator localIterator = this.factories.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      TypeAdapterFactory localTypeAdapterFactory = (TypeAdapterFactory)localIterator.next();
      if (i == 0)
      {
        if (localTypeAdapterFactory != paramTypeAdapterFactory)
          continue;
        i = 1;
        continue;
      }
      TypeAdapter localTypeAdapter = localTypeAdapterFactory.create(this, paramTypeToken);
      if (localTypeAdapter != null)
        return localTypeAdapter;
    }
    throw new IllegalArgumentException("GSON cannot serialize " + paramTypeToken);
  }

  public final String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramJsonElement, localStringWriter);
    return localStringWriter.toString();
  }

  public final String toJson(Object paramObject)
  {
    if (paramObject == null)
      return toJson(JsonNull.INSTANCE);
    return toJson(paramObject, paramObject.getClass());
  }

  public final String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }

  public final void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      Streams.write(paramJsonElement, paramJsonWriter);
      return;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
    throw localObject;
  }

  public final void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
  {
    try
    {
      toJson(paramJsonElement, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException(localIOException);
  }

  public final void toJson(Object paramObject, Appendable paramAppendable)
  {
    if (paramObject != null)
    {
      toJson(paramObject, paramObject.getClass(), paramAppendable);
      return;
    }
    toJson(JsonNull.INSTANCE, paramAppendable);
  }

  public final void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
  {
    TypeAdapter localTypeAdapter = getAdapter(TypeToken.get(paramType));
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      localTypeAdapter.write(paramJsonWriter, paramObject);
      return;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
    throw localObject;
  }

  public final void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
  {
    try
    {
      toJson(paramObject, paramType, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new JsonIOException(localIOException);
  }

  public final JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null)
      return JsonNull.INSTANCE;
    return toJsonTree(paramObject, paramObject.getClass());
  }

  public final JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
    toJson(paramObject, paramType, localJsonTreeWriter);
    return localJsonTreeWriter.get();
  }

  public final String toString()
  {
    return "{serializeNulls:" + this.serializeNulls + "factories:" + this.factories + ",instanceCreators:" + this.constructorConstructor + "}";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.Gson
 * JD-Core Version:    0.6.0
 */