package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser
  implements Iterator<JsonElement>
{
  private final Object lock;
  private final JsonReader parser;

  public JsonStreamParser(Reader paramReader)
  {
    this.parser = new JsonReader(paramReader);
    this.parser.setLenient(true);
    this.lock = new Object();
  }

  public JsonStreamParser(String paramString)
  {
    this(new StringReader(paramString));
  }

  public final boolean hasNext()
  {
    while (true)
    {
      try
      {
        synchronized (this.lock)
        {
          try
          {
            JsonToken localJsonToken1 = this.parser.peek();
            JsonToken localJsonToken2 = JsonToken.END_DOCUMENT;
            if (localJsonToken1 != localJsonToken2)
            {
              i = 1;
              return i;
            }
          }
          catch (MalformedJsonException localMalformedJsonException)
          {
            throw new JsonSyntaxException(localMalformedJsonException);
          }
        }
      }
      catch (IOException localIOException)
      {
        throw new JsonIOException(localIOException);
      }
      int i = 0;
    }
  }

  public final JsonElement next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    NoSuchElementException localNoSuchElementException;
    try
    {
      JsonElement localJsonElement = Streams.parse(this.parser);
      return localJsonElement;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localStackOverflowError);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localOutOfMemoryError);
    }
    catch (JsonParseException localNoSuchElementException)
    {
      if ((localJsonParseException.getCause() instanceof EOFException))
        localNoSuchElementException = new NoSuchElementException();
    }
    throw localNoSuchElementException;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.JsonStreamParser
 * JD-Core Version:    0.6.0
 */