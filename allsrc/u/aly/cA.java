package u.aly;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.umeng.a.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public final class cA
{
  private String a;
  private String b = "10.0.0.172";
  private int c = 80;
  private Context d;
  private cD e;
  private cb f;

  public cA(Context paramContext)
  {
    this.d = paramContext;
    this.f = cd.b(paramContext);
    this.a = a(paramContext);
  }

  private static String a(Context paramContext)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("Android");
    localStringBuffer1.append("/");
    localStringBuffer1.append("5.2.4");
    localStringBuffer1.append(" ");
    try
    {
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(bs.p(paramContext));
      localStringBuffer2.append("/");
      localStringBuffer2.append(bs.b(paramContext));
      localStringBuffer2.append(" ");
      localStringBuffer2.append(Build.MODEL);
      localStringBuffer2.append("/");
      localStringBuffer2.append(Build.VERSION.RELEASE);
      localStringBuffer2.append(" ");
      localStringBuffer2.append(bx.a(a.a(paramContext)));
      localStringBuffer1.append(URLEncoder.encode(localStringBuffer2.toString(), "UTF-8"));
      return localStringBuffer1.toString();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private boolean a()
  {
    if (this.d.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.d.getPackageName()) != 0)
      return false;
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.d.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.getType() != 1))
      {
        String str = localNetworkInfo.getExtraInfo();
        if (str != null)
          if ((!str.equals("cmwap")) && (!str.equals("3gwap")))
          {
            boolean bool = str.equals("uniwap");
            if (!bool);
          }
          else
          {
            return true;
          }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  private byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
    localHttpPost.addHeader("X-Umeng-Sdk", this.a);
    localHttpPost.addHeader("Msg-Type", "envelope");
    try
    {
      if (a())
      {
        HttpHost localHttpHost = new HttpHost(this.b, this.c);
        localDefaultHttpClient.getParams().setParameter("http.route.default-proxy", localHttpHost);
      }
      localHttpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length));
      if (this.e != null)
        this.e.c();
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
      if (this.e != null)
        this.e.d();
      int i = localHttpResponse.getStatusLine().getStatusCode();
      bt.a("MobclickAgent", "status code : " + i);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        bt.a("MobclickAgent", "Sent message to " + paramString);
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity != null)
        {
          InputStream localInputStream = localHttpEntity.getContent();
          try
          {
            byte[] arrayOfByte = bx.b(localInputStream);
            return arrayOfByte;
          }
          finally
          {
            bx.c(localInputStream);
          }
        }
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      bt.b("MobclickAgent", "ClientProtocolException,Failed to send message.", localClientProtocolException);
      return null;
      return null;
      return null;
    }
    catch (IOException localIOException)
    {
      bt.b("MobclickAgent", "IOException,Failed to send message.", localIOException);
    }
    return null;
  }

  private int b(byte[] paramArrayOfByte)
  {
    bb localbb = new bb();
    bD localbD = new bD(new cr.a());
    try
    {
      localbD.a(localbb, paramArrayOfByte);
      if (localbb.a == 1)
      {
        this.f.a(localbb.j());
        this.f.c();
      }
      bt.a("MobclickAgent", "send log:" + localbb.f());
      if (localbb.a == 1)
        return 2;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    return 3;
  }

  public final int a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = null;
    for (int i = 0; ; i++)
    {
      if (i >= 2);
      while (true)
      {
        if (arrayOfByte != null)
          break label82;
        return 1;
        arrayOfByte = a(paramArrayOfByte, com.umeng.a.i.a[i]);
        if (arrayOfByte == null)
          break;
        if (this.e == null)
          continue;
        this.e.b();
      }
      if (this.e == null)
        continue;
      cD localcD = this.e;
      localcD.a = (1 + localcD.a);
    }
    label82: return b(arrayOfByte);
  }

  public final void a(cD paramcD)
  {
    this.e = paramcD;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cA
 * JD-Core Version:    0.6.0
 */