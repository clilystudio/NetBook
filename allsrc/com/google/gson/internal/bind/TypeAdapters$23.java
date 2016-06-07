package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class TypeAdapters$23 extends TypeAdapter<Calendar>
{
  private static final String DAY_OF_MONTH = "dayOfMonth";
  private static final String HOUR_OF_DAY = "hourOfDay";
  private static final String MINUTE = "minute";
  private static final String MONTH = "month";
  private static final String SECOND = "second";
  private static final String YEAR = "year";

  public final Calendar read(JsonReader paramJsonReader)
  {
    int i = 0;
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    paramJsonReader.beginObject();
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    while (paramJsonReader.peek() != JsonToken.END_OBJECT)
    {
      String str = paramJsonReader.nextName();
      int i2 = paramJsonReader.nextInt();
      if ("year".equals(str))
      {
        i1 = i2;
        continue;
      }
      if ("month".equals(str))
      {
        n = i2;
        continue;
      }
      if ("dayOfMonth".equals(str))
      {
        m = i2;
        continue;
      }
      if ("hourOfDay".equals(str))
      {
        k = i2;
        continue;
      }
      if ("minute".equals(str))
      {
        j = i2;
        continue;
      }
      if (!"second".equals(str))
        continue;
      i = i2;
    }
    paramJsonReader.endObject();
    return new GregorianCalendar(i1, n, m, k, j, i);
  }

  public final void write(JsonWriter paramJsonWriter, Calendar paramCalendar)
  {
    if (paramCalendar == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginObject();
    paramJsonWriter.name("year");
    paramJsonWriter.value(paramCalendar.get(1));
    paramJsonWriter.name("month");
    paramJsonWriter.value(paramCalendar.get(2));
    paramJsonWriter.name("dayOfMonth");
    paramJsonWriter.value(paramCalendar.get(5));
    paramJsonWriter.name("hourOfDay");
    paramJsonWriter.value(paramCalendar.get(11));
    paramJsonWriter.name("minute");
    paramJsonWriter.value(paramCalendar.get(12));
    paramJsonWriter.name("second");
    paramJsonWriter.value(paramCalendar.get(13));
    paramJsonWriter.endObject();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.23
 * JD-Core Version:    0.6.0
 */