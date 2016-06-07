package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class SqlDateTypeAdapter extends TypeAdapter<java.sql.Date>
{
  public static final TypeAdapterFactory FACTORY = new SqlDateTypeAdapter.1();
  private final DateFormat format = new SimpleDateFormat("MMM d, yyyy");

  public final java.sql.Date read(JsonReader paramJsonReader)
  {
    monitorenter;
    try
    {
      java.sql.Date localDate;
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        localDate = null;
      }
      while (true)
      {
        return localDate;
        try
        {
          localDate = new java.sql.Date(this.format.parse(paramJsonReader.nextString()).getTime());
        }
        catch (ParseException localParseException)
        {
          throw new JsonSyntaxException(localParseException);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void write(JsonWriter paramJsonWriter, java.sql.Date paramDate)
  {
    monitorenter;
    Object localObject2;
    if (paramDate == null)
      localObject2 = null;
    try
    {
      while (true)
      {
        paramJsonWriter.value((String)localObject2);
        return;
        String str = this.format.format(paramDate);
        localObject2 = str;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.SqlDateTypeAdapter
 * JD-Core Version:    0.6.0
 */