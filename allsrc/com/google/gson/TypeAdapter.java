package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T>
{
  public final T fromJson(Reader paramReader)
  {
    return read(new JsonReader(paramReader));
  }

  public final T fromJson(String paramString)
  {
    return fromJson(new StringReader(paramString));
  }

  public final T fromJsonTree(JsonElement paramJsonElement)
  {
    try
    {
      Object localObject = read(new JsonTreeReader(paramJsonElement));
      return localObject;
    }
    catch (IOException localIOException)
    {
    }
    throw new JsonIOException(localIOException);
  }

  public final TypeAdapter<T> nullSafe()
  {
    return new TypeAdapter.1(this);
  }

  public abstract T read(JsonReader paramJsonReader);

  public final String toJson(T paramT)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(localStringWriter, paramT);
    return localStringWriter.toString();
  }

  public final void toJson(Writer paramWriter, T paramT)
  {
    write(new JsonWriter(paramWriter), paramT);
  }

  public final JsonElement toJsonTree(T paramT)
  {
    try
    {
      JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
      write(localJsonTreeWriter, paramT);
      JsonElement localJsonElement = localJsonTreeWriter.get();
      return localJsonElement;
    }
    catch (IOException localIOException)
    {
    }
    throw new JsonIOException(localIOException);
  }

  public abstract void write(JsonWriter paramJsonWriter, T paramT);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.TypeAdapter
 * JD-Core Version:    0.6.0
 */