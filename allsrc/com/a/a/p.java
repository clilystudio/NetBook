package com.a.a;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPOutputStream;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class p
  implements Runnable
{
  private Context a;

  public p(d paramd, Context paramContext)
  {
    this.a = paramContext;
  }

  public final void run()
  {
    if (d.a(this.b).length() == 0)
      if (q.a().e() == 2)
        d.b(this.b).postDelayed(new p(this.b, this.a), q.a().f());
    while (true)
    {
      return;
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("appkey", d.c(this.b));
        localJSONObject.put("gid", d.d(this.b));
        localJSONObject.put("v", "1.1.1");
        localJSONObject.put("requests", d.a(this.b));
        label116: str1 = localJSONObject.toString();
        if (q.a().b())
          Log.d("BfdAgent", str1);
        localByteArrayOutputStream = new ByteArrayOutputStream();
      }
      catch (IOException localIOException)
      {
        try
        {
          String str1;
          ByteArrayOutputStream localByteArrayOutputStream;
          byte[] arrayOfByte3 = str1.getBytes("UTF-8");
          arrayOfByte1 = arrayOfByte3;
          try
          {
            if (Build.VERSION.SDK_INT >= 19)
            {
              GZIPOutputStream localGZIPOutputStream1 = new GZIPOutputStream(new BufferedOutputStream(localByteArrayOutputStream), false);
              localGZIPOutputStream1.write(arrayOfByte1);
              localGZIPOutputStream1.finish();
              localGZIPOutputStream1.flush();
              int i = localByteArrayOutputStream.size();
              j = 0;
              if (i > 0)
              {
                byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
                HttpPost localHttpPost = new HttpPost("http://m.api.baifendian.com/multi");
                localHttpPost.addHeader("Content-Encoding", "gzip");
                str2 = d.a(this.b, this.a, localHttpPost, arrayOfByte2);
                j = 0;
                if (str2 == null);
              }
            }
          }
          catch (IOException localIOException)
          {
            try
            {
              while (true)
              {
                String str2;
                int k = new JSONArray(str2).getInt(0);
                j = 0;
                if (k == 0)
                  j = 1;
                if (j != 0)
                {
                  if (q.a().b())
                    Log.d("BfdAgent", "requests were successfully sent.");
                  d.a(this.b, new JSONArray());
                  d.a(this.b, this.a);
                }
                if (q.a().e() != 2)
                  break;
                d.b(this.b).postDelayed(new p(this.b, this.a), q.a().f());
                return;
                localJSONException1 = localJSONException1;
                d.a(this.b, new JSONArray());
                break label116;
                GZIPOutputStream localGZIPOutputStream2 = new GZIPOutputStream(new BufferedOutputStream(localByteArrayOutputStream));
                localGZIPOutputStream2.write(arrayOfByte1);
                localGZIPOutputStream2.finish();
                localGZIPOutputStream2.flush();
              }
              localIOException = localIOException;
            }
            catch (JSONException localJSONException2)
            {
              while (true)
                int j = 0;
            }
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
            byte[] arrayOfByte1 = null;
        }
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.p
 * JD-Core Version:    0.6.0
 */