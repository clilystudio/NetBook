package com.clilystudio.netbook.util;

import android.text.format.DateUtils;
import com.arcsoft.hpay100.a.a;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public final class t
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
  private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);
  private static final SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA);

  public static int a()
  {
    Date localDate = new Date();
    return a.b(a.format(localDate), 0);
  }

  public static String a(long paramLong)
  {
    long l1 = Math.abs(System.currentTimeMillis() - paramLong);
    if (l1 <= 60000L)
      return "刚刚";
    if (l1 <= 604800000L)
      return DateUtils.getRelativeTimeSpanString(paramLong).toString();
    if (l1 <= 2592000000L)
    {
      long l4 = l1 / 86400000L;
      return l4 + " 天前";
    }
    if (l1 <= 31536000000L)
    {
      long l3 = l1 / 2592000000L;
      return l3 + " 月前";
    }
    if (l1 <= 94608000000L)
    {
      long l2 = l1 / 31536000000L;
      return l2 + " 年前";
    }
    return DateUtils.getRelativeTimeSpanString(paramLong).toString();
  }

  public static String a(Date paramDate)
  {
    return a.format(paramDate);
  }

  public static Date a(String paramString)
  {
    try
    {
      Date localDate = b.parse(paramString);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
      return new Date();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static boolean a(Date paramDate, Date[] paramArrayOfDate)
  {
    if (paramDate == null);
    do
      while (true)
      {
        return false;
        if (paramArrayOfDate.length != 1)
          break;
        if ((paramDate.getTime() >= f(paramArrayOfDate[0]).getTime()) && (paramDate.getTime() <= g(paramArrayOfDate[0]).getTime()))
          return true;
      }
    while ((paramArrayOfDate.length != 2) || (paramDate.getTime() < f(paramArrayOfDate[0]).getTime()) || (paramDate.getTime() > g(paramArrayOfDate[1]).getTime()));
    return true;
  }

  public static String b(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l1 = paramLong % 86400000L / 3600000L;
    long l2 = paramLong % 3600000L / 60000L;
    long l3 = paramLong % 60000L / 1000L;
    if (l1 > 0L)
      localStringBuilder.append(l1 + ":");
    if (l2 < 10L)
      localStringBuilder.append("0");
    localStringBuilder.append(l2 + ":");
    if (l3 < 10L)
      localStringBuilder.append("0");
    localStringBuilder.append(l3);
    return localStringBuilder.toString();
  }

  public static String b(Date paramDate)
  {
    if (paramDate == null)
      return null;
    return new SimpleDateFormat("yyyy.MM.dd", Locale.CHINA).format(paramDate);
  }

  public static Date b(String paramString)
  {
    String str = paramString.replace("Z", "+0000");
    return c.parse(str, new ParsePosition(0));
  }

  public static String c(Date paramDate)
  {
    if (paramDate == null)
      return null;
    return new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(paramDate);
  }

  public static String d(Date paramDate)
  {
    if (paramDate == null)
      return null;
    return new SimpleDateFormat("MM-dd hh:mm", Locale.CHINA).format(paramDate);
  }

  public static String e(Date paramDate)
  {
    if (paramDate != null)
      return a(paramDate.getTime());
    return "暂无";
  }

  private static Date f(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    localCalendar.set(14, 0);
    return localCalendar.getTime();
  }

  private static Date g(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(11, 23);
    localCalendar.set(12, 59);
    localCalendar.set(13, 59);
    localCalendar.set(14, 999);
    return localCalendar.getTime();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.t
 * JD-Core Version:    0.6.0
 */