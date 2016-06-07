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
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class DateTypeAdapter extends TypeAdapter<Date>
{
  public static final TypeAdapterFactory FACTORY = new DateTypeAdapter.1();
  private final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat iso8601Format = buildIso8601Format();
  private final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);

  private static DateFormat buildIso8601Format()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return localSimpleDateFormat;
  }

  private Date deserializeToDate(String paramString)
  {
    monitorenter;
    try
    {
      Date localDate3 = this.localFormat.parse(paramString);
      localObject2 = localDate3;
      return localObject2;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = this.enUsFormat.parse(paramString);
        localObject2 = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate1 = this.iso8601Format.parse(paramString);
          Object localObject2 = localDate1;
        }
        catch (ParseException localParseException3)
        {
          throw new JsonSyntaxException(paramString, localParseException3);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final Date read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return deserializeToDate(paramJsonReader.nextString());
  }

  public final void write(JsonWriter paramJsonWriter, Date paramDate)
  {
    monitorenter;
    if (paramDate == null);
    try
    {
      paramJsonWriter.nullValue();
      while (true)
      {
        return;
        paramJsonWriter.value(this.enUsFormat.format(paramDate));
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.DateTypeAdapter
 * JD-Core Version:    0.6.0
 */