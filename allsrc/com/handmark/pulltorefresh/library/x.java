package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.webkit.WebView;

@TargetApi(9)
final class x extends WebView
{
  public x(PullToRefreshWebView paramPullToRefreshWebView, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
  {
    boolean bool = super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBoolean);
    b.a(this.a, paramInt1, paramInt3, paramInt2, paramInt4, (int)Math.max(0.0F, FloatMath.floor(((WebView)this.a.b).getContentHeight() * ((WebView)this.a.b).getScale()) - (getHeight() - getPaddingBottom() - getPaddingTop())), 2, 1.5F, paramBoolean);
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.x
 * JD-Core Version:    0.6.0
 */