package cn.sharesdk.framework.authorize;

import android.webkit.WebView;

public abstract class b extends com.mob.tools.g
{
  protected g a;
  protected String b;
  protected AuthorizeListener c;

  public b(g paramg)
  {
    this.a = paramg;
    AuthorizeHelper localAuthorizeHelper = paramg.a();
    this.b = localAuthorizeHelper.getRedirectUri();
    this.c = localAuthorizeHelper.getAuthorizeListener();
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    paramWebView.stopLoading();
    AuthorizeListener localAuthorizeListener = this.a.a().getAuthorizeListener();
    this.a.finish();
    if (localAuthorizeListener != null)
      localAuthorizeListener.onError(new Throwable(paramString1 + " (" + paramInt + "): " + paramString2));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.b
 * JD-Core Version:    0.6.0
 */