package com.ushaqi.zhuishushenqi.api;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.api.d
 * JD-Core Version:    0.6.0
 */