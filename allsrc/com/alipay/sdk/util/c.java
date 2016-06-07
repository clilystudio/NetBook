package com.alipay.sdk.util;

import android.util.Log;
import com.alipay.sdk.d.a;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

final class c
  implements Runnable
{
  c(String paramString)
  {
  }

  public final void run()
  {
    ArrayList localArrayList;
    synchronized (b.a())
    {
      localArrayList = new ArrayList(1);
      localArrayList.add(new BasicNameValuePair("errorTag", this.a));
    }
    try
    {
      b.b().setEntity(new UrlEncodedFormEntity(localArrayList));
      try
      {
        label49: com.alipay.sdk.d.b.a();
        com.alipay.sdk.d.b.a();
        Log.d("Http Post Response:", a.a(com.alipay.sdk.d.b.a.a(b.b())));
        label75: monitorexit;
        return;
        localObject2 = finally;
        monitorexit;
        throw localObject2;
      }
      catch (Throwable localThrowable)
      {
        break label75;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      break label49;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.c
 * JD-Core Version:    0.6.0
 */