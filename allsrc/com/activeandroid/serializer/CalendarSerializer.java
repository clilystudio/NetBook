package com.activeandroid.serializer;

import java.util.Calendar;

public final class CalendarSerializer extends TypeSerializer
{
  public final Calendar deserialize(Object paramObject)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(((Long)paramObject).longValue());
    return localCalendar;
  }

  public final Class<?> getDeserializedType()
  {
    return Calendar.class;
  }

  public final Class<?> getSerializedType()
  {
    return Long.TYPE;
  }

  public final Long serialize(Object paramObject)
  {
    return Long.valueOf(((Calendar)paramObject).getTimeInMillis());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.serializer.CalendarSerializer
 * JD-Core Version:    0.6.0
 */