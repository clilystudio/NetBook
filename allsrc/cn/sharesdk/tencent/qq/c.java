package cn.sharesdk.tencent.qq;

import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.g;
import java.net.URLDecoder;
import java.util.HashMap;

public class c extends b
{
  public c(g paramg)
  {
    super(paramg);
  }

  private void a(HashMap<String, String> paramHashMap)
  {
    String str1 = (String)paramHashMap.get("access_token");
    String str2 = (String)paramHashMap.get("expires_in");
    String str3 = (String)paramHashMap.get("error");
    String str4 = (String)paramHashMap.get("error_description");
    String str5 = (String)paramHashMap.get("pf");
    String str6 = (String)paramHashMap.get("pfkey");
    String str7 = (String)paramHashMap.get("pay_token");
    if (!TextUtils.isEmpty(str1))
    {
      HashMap localHashMap;
      try
      {
        localHashMap = e.a(this.a.a().getPlatform()).c(str1);
        if ((localHashMap == null) || (localHashMap.size() <= 0))
        {
          if (this.c == null)
            return;
          this.c.onError(new Throwable());
          return;
        }
        if (localHashMap.containsKey("openid"))
          break label195;
        if (this.c == null)
          return;
        this.c.onError(new Throwable());
        return;
      }
      catch (Throwable localThrowable)
      {
        if (this.c == null)
          return;
      }
      this.c.onError(localThrowable);
      return;
      label195: Bundle localBundle = new Bundle();
      localBundle.putString("access_token", str1);
      localBundle.putString("open_id", String.valueOf(localHashMap.get("openid")));
      localBundle.putString("expires_in", str2);
      localBundle.putString("pf", str5);
      localBundle.putString("pfkey", str6);
      localBundle.putString("pay_token", str7);
      if (this.c != null)
      {
        this.c.onComplete(localBundle);
        return;
      }
    }
    else if (!TextUtils.isEmpty(str3))
    {
      String str8 = str4 + " (" + str3 + ")";
      if (this.c != null)
      {
        this.c.onError(new Throwable(str8));
        return;
      }
    }
    else
    {
      this.c.onError(new Throwable());
    }
  }

  protected void a(String paramString)
  {
    if (paramString.startsWith(this.b))
      paramString = paramString.substring(1 + paramString.indexOf('#'));
    String[] arrayOfString1 = paramString.split("&");
    HashMap localHashMap = new HashMap();
    int i = arrayOfString1.length;
    int j = 0;
    while (j < i)
    {
      String[] arrayOfString2 = arrayOfString1[j].split("=");
      if (arrayOfString2.length < 2)
      {
        localHashMap.put(URLDecoder.decode(arrayOfString2[0]), "");
        j++;
        continue;
      }
      String str1 = URLDecoder.decode(arrayOfString2[0]);
      if (arrayOfString2[1] == null);
      for (String str2 = ""; ; str2 = arrayOfString2[1])
      {
        localHashMap.put(str1, URLDecoder.decode(str2));
        break;
      }
    }
    a(localHashMap);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith(this.b))
    {
      paramWebView.setVisibility(4);
      paramWebView.stopLoading();
      this.a.finish();
      new d(this, paramString).start();
      return true;
    }
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.c
 * JD-Core Version:    0.6.0
 */