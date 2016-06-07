package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class TimeTypeAdapter extends TypeAdapter<Time>
{
  public static final TypeAdapterFactory FACTORY = new TimeTypeAdapter.1();
  private final DateFormat format = new SimpleDateFormat("hh:mm:ss a");

  public final Time read(JsonReader paramJsonReader)
  {
    monitorenter;
    try
    {
      Time localTime;
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        localTime = null;
      }
      while (true)
      {
        return localTime;
        try
        {
          localTime = new Time(this.format.parse(paramJsonReader.nextString()).getTime());
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

  public final void write(JsonWriter paramJsonWriter, Time paramTime)
  {
    monitorenter;
    Object localObject2;
    if (paramTime == null)
      localObject2 = null;
    try
    {
      while (true)
      {
        paramJsonWriter.value((String)localObject2);
        return;
        String str = this.format.format(paramTime);
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
 * Qualified Name:     com.google.gson.internal.bind.TimeTypeAdapter
 * JD-Core Version:    0.6.0
 */