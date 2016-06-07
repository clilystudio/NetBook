package cn.sharesdk.tencent.qq;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.widget.Toast;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.g;

class n extends g
{
  n(k paramk)
  {
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if ((paramString != null) && (paramString.startsWith("wtloginmqq://")))
    {
      int i = a.e(k.e(this.a), "ssdk_use_login_button");
      if (i > 0)
        Toast.makeText(k.f(this.a), i, 0).show();
      return;
    }
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = true;
    if ((paramString != null) && (paramString.startsWith(k.b(this.a))))
    {
      k.a(this.a, paramString);
      bool = super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
    int i;
    do
    {
      return bool;
      if ((paramString != null) && (paramString.startsWith("http://www.myapp.com/down/")))
      {
        k.a(this.a, bool);
        break;
      }
      if ((paramString == null) || (!paramString.startsWith("wtloginmqq://")))
        break;
      i = a.e(k.c(this.a), "ssdk_use_login_button");
    }
    while (i <= 0);
    Toast.makeText(k.d(this.a), i, 0).show();
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.n
 * JD-Core Version:    0.6.0
 */