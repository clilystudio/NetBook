package com.clilystudio.app.netbook.api;

import java.util.Calendar;
import java.util.Date;

public final class d
{
  private final String a;
  private final Date b;

  public d(String paramString, int paramInt)
  {
    this.a = paramString;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(13, paramInt);
    this.b = localCalendar.getTime();
  }

  public final String a()
  {
    return this.a;
  }

  public final Date b()
  {
    return this.b;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.api.d
 * JD-Core Version:    0.6.2
 */