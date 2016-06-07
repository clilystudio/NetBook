package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class PullToRefreshWebView extends PullToRefreshBase<WebView>
{
  private static final k<WebView> a = new v();
  private final WebChromeClient c = new w(this);

  public PullToRefreshWebView(Context paramContext)
  {
    super(paramContext);
    setOnRefreshListener(a);
    ((WebView)this.b).setWebChromeClient(this.c);
  }

  public PullToRefreshWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnRefreshListener(a);
    ((WebView)this.b).setWebChromeClient(this.c);
  }

  protected final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    ((WebView)this.b).restoreState(paramBundle);
  }

  protected WebView b(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9);
    for (Object localObject = new x(this, paramContext, paramAttributeSet); ; localObject = new WebView(paramContext, paramAttributeSet))
    {
      ((WebView)localObject).setId(R.id.webview);
      return localObject;
    }
  }

  protected final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    ((WebView)this.b).saveState(paramBundle);
  }

  protected boolean c()
  {
    return ((WebView)this.b).getScrollY() == 0;
  }

  protected boolean d()
  {
    float f = FloatMath.floor(((WebView)this.b).getContentHeight() * ((WebView)this.b).getScale());
    return ((WebView)this.b).getScrollY() >= f - ((WebView)this.b).getHeight();
  }

  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshWebView
 * JD-Core Version:    0.6.0
 */