package com.handmark.pulltorefresh.library.extras;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.handmark.pulltorefresh.library.PullToRefreshWebView;
import java.util.concurrent.atomic.AtomicBoolean;

public class PullToRefreshWebView2 extends PullToRefreshWebView
{
  private a a;
  private final AtomicBoolean c = new AtomicBoolean(false);
  private final AtomicBoolean d = new AtomicBoolean(false);

  public PullToRefreshWebView2(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshWebView2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final WebView b(Context paramContext, AttributeSet paramAttributeSet)
  {
    WebView localWebView = super.b(paramContext, paramAttributeSet);
    this.a = new a(this);
    localWebView.addJavascriptInterface(this.a, "ptr");
    return localWebView;
  }

  protected final boolean c()
  {
    ((WebView)h()).loadUrl("javascript:isReadyForPullDown();");
    return this.c.get();
  }

  protected final boolean d()
  {
    ((WebView)h()).loadUrl("javascript:isReadyForPullUp();");
    return this.d.get();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.extras.PullToRefreshWebView2
 * JD-Core Version:    0.6.0
 */