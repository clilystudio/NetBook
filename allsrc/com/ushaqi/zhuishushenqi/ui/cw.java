package com.ushaqi.zhuishushenqi.ui;

import android.app.Activity;
import android.app.Dialog;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import cn.sharesdk.framework.PlatformActionListener;
import com.ushaqi.zhuishushenqi.util.T;
import com.ushaqi.zhuishushenqi.view.c;

public final class cw
{
  private Activity a;
  private WebView b;
  private PlatformActionListener c = new cx(this);

  public cw(Activity paramActivity, WebView paramWebView)
  {
    this.a = paramActivity;
    this.b = paramWebView;
  }

  @JavascriptInterface
  public final void shareAll(String paramString1, String paramString2, String paramString3)
  {
    shareAll("追书神器", paramString1, paramString2, paramString3);
  }

  @JavascriptInterface
  public final void shareAll(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new c(this.a, new cy(this, paramString1, paramString2, paramString3, paramString4)).a().show();
  }

  @JavascriptInterface
  public final void shareQZone(String paramString1, String paramString2, String paramString3)
  {
    shareQZone("追书神器", paramString1, paramString2, paramString3);
  }

  @JavascriptInterface
  public final void shareQZone(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    T.a(this.a, paramString1, paramString2, paramString3, paramString4, 4, this.c);
  }

  @JavascriptInterface
  public final void shareWeibo(String paramString1, String paramString2, String paramString3)
  {
    shareWeibo("追书神器", paramString1, paramString2, paramString3);
  }

  @JavascriptInterface
  public final void shareWeibo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    T.a(this.a, paramString1, paramString2, paramString3, paramString4, 0, this.c);
  }

  @JavascriptInterface
  public final void shareWeixin(String paramString1, String paramString2, String paramString3)
  {
    shareWeixin("追书神器", paramString1, paramString2, paramString3);
  }

  @JavascriptInterface
  public final void shareWeixin(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    T.a(this.a, paramString1, paramString2, paramString3, paramString4, 2, this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.cw
 * JD-Core Version:    0.6.0
 */