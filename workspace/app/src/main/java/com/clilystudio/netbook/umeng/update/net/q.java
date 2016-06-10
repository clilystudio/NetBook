package com.clilystudio.netbook.umeng.update.net;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import u.a.b;
import u.a.g;

final class q
  implements Runnable
{
  q(p paramp, String[] paramArrayOfString, boolean paramBoolean, Map paramMap)
  {
  }

  public final void run()
  {
    int i = new Random().nextInt(1000);
    if (this.a == null)
      b.a(p.a(), i + "service report: urls is null");
    while (true)
    {
      return;
      String[] arrayOfString = this.a;
      int j = arrayOfString.length;
      int k = 0;
      label58: if (k >= j)
        continue;
      String str1 = arrayOfString[k];
      String str2 = g.a();
      String str3 = str2.split(" ")[0];
      String str4 = str2.split(" ")[1];
      long l = System.currentTimeMillis();
      StringBuilder localStringBuilder = new StringBuilder(str1);
      localStringBuilder.append("&data=").append(str3);
      localStringBuilder.append("&time=").append(str4);
      localStringBuilder.append("&ts=").append(l);
      label167: Iterator localIterator;
      if (this.b)
      {
        localStringBuilder.append("&action_type=1");
        if (this.c != null)
        {
          localIterator = this.c.keySet().iterator();
          if (localIterator.hasNext())
            break label369;
        }
      }
      try
      {
        b.a(p.a(), i + ": service report:\tget: " + localStringBuilder.toString());
        HttpGet localHttpGet = new HttpGet(localStringBuilder.toString());
        BasicHttpParams localBasicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
        HttpResponse localHttpResponse = new DefaultHttpClient(localBasicHttpParams).execute(localHttpGet);
        b.a(p.a(), i + ": service report:status code:  " + localHttpResponse.getStatusLine().getStatusCode());
        int m = localHttpResponse.getStatusLine().getStatusCode();
        if (m == 200)
          continue;
        k++;
        break label58;
        localStringBuilder.append("&action_type=-2");
        break label167;
        label369: String str5 = (String)localIterator.next();
        localStringBuilder.append("&").append(str5).append("=").append((String)this.c.get(str5));
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        while (true)
          b.c(p.a(), i + ": service report:\tClientProtocolException,Failed to send message." + str1, localClientProtocolException);
      }
      catch (IOException localIOException)
      {
        while (true)
          b.c(p.a(), i + ": service report:\tIOException,Failed to send message." + str1, localIOException);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.q
 * JD-Core Version:    0.6.0
 */