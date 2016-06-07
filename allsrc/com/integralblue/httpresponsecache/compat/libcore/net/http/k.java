package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class k
{
  private static final ThreadLocal<DateFormat> a = new l();
  private static final String[] b = { "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z" };

  public static String a(Date paramDate)
  {
    return ((DateFormat)a.get()).format(paramDate);
  }

  public static Date a(String paramString)
  {
    try
    {
      Date localDate2 = ((DateFormat)a.get()).parse(paramString);
      return localDate2;
    }
    catch (ParseException localParseException1)
    {
      String[] arrayOfString = b;
      int i = 0;
      while (i < 14)
      {
        String str = arrayOfString[i];
        try
        {
          Date localDate1 = new SimpleDateFormat(str, Locale.US).parse(paramString);
          return localDate1;
        }
        catch (ParseException localParseException2)
        {
          i++;
        }
      }
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.k
 * JD-Core Version:    0.6.0
 */