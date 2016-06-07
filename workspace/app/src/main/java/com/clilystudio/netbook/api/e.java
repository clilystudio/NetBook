package com.clilystudio.netbook.api;

import android.text.TextUtils;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.github.kevinsawicki.http.HttpRequest;
import com.clilystudio.netbook.db.DnsCacheRecord;
import com.clilystudio.netbook.exception.DnsParseFailedException;
import java.net.URL;

public final class e
{
  private static boolean a;
  private static c b = c.a();

  public static void a(HttpRequest paramHttpRequest)
  {
    URL localURL;
    String str1;
    String str2;
    d locald;
    do
    {
      String str3;
      while (true)
      {
        DnsCacheRecord localDnsCacheRecord;
        try
        {
          localURL = paramHttpRequest.a();
          str1 = localURL.getHost();
          localDnsCacheRecord = (DnsCacheRecord)new Select().from(DnsCacheRecord.class).where("host = ?", new Object[] { str1 }).executeSingle();
          if ((localDnsCacheRecord != null) && (localDnsCacheRecord.isExpired()))
          {
            localDnsCacheRecord.delete();
            str2 = null;
            if (str2 != null)
              break label223;
            str3 = HttpRequest.a(String.format("http://%s/d?dn=%s&ttl=1", new Object[] { "119.29.29.29", str1 })).d();
            if (str3 != null)
              break;
            throw new DnsParseFailedException(str3 + " parse failed");
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        if (localDnsCacheRecord == null)
        {
          str2 = null;
          continue;
        }
        str2 = localDnsCacheRecord.getIp();
      }
      String[] arrayOfString1 = str3.split(",");
      String[] arrayOfString2 = arrayOfString1[0].split(";");
      int i = Integer.parseInt(arrayOfString1[1]);
      locald = new d(arrayOfString2[0], i);
      str2 = locald.a();
    }
    while (TextUtils.isEmpty(str2));
    b.a(locald, str1);
    label223: paramHttpRequest.a(new URL(localURL.toString().replace(str1, str2)));
    paramHttpRequest.a("Host", str1);
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static boolean a()
  {
    return a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.api.e
 * JD-Core Version:    0.6.0
 */