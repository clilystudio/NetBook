package com.squareup.okhttp.internal.http;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class k
{
  private static final TimeZone a = TimeZone.getTimeZone("GMT");
  private static final ThreadLocal<DateFormat> b = new l();
  private static final String[] c = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };
  private static final DateFormat[] d = new DateFormat[15];

  public static Date a(String paramString)
  {
    int i = 0;
    Date localDate1;
    if (paramString.length() == 0)
      localDate1 = null;
    ParsePosition localParsePosition;
    do
    {
      return localDate1;
      localParsePosition = new ParsePosition(0);
      localDate1 = ((DateFormat)b.get()).parse(paramString, localParsePosition);
    }
    while (localParsePosition.getIndex() == paramString.length());
    String[] arrayOfString = c;
    monitorenter;
    while (i < 15)
    {
      try
      {
        Object localObject2 = d[i];
        if (localObject2 == null)
        {
          localObject2 = new SimpleDateFormat(c[i], Locale.US);
          ((DateFormat)localObject2).setTimeZone(a);
          d[i] = localObject2;
        }
        localParsePosition.setIndex(0);
        Date localDate2 = ((DateFormat)localObject2).parse(paramString, localParsePosition);
        if (localParsePosition.getIndex() != 0)
          return localDate2;
      }
      finally
      {
        monitorexit;
      }
      i++;
    }
    monitorexit;
    return (Date)null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.k
 * JD-Core Version:    0.6.0
 */