package com.ushaqi.zhuishushenqi.model;

import android.content.Context;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.ui.AdWebViewActivity;
import com.ushaqi.zhuishushenqi.util.InsideLinkIntent;
import com.ushaqi.zhuishushenqi.util.adutil.BaseShelfAd;

public class MyUrlAdvert extends BaseShelfAd
{
  private void launchAdWebView(Context paramContext)
  {
    paramContext.startActivity(AdWebViewActivity.a(paramContext, getTitle(), getUrl()));
  }

  public boolean isApk()
  {
    return false;
  }

  public void onAdClick(View paramView)
  {
    try
    {
      paramView.getContext().startActivity(new InsideLinkIntent(paramView.getContext(), getInsideLink()));
      return;
    }
    catch (Exception localException)
    {
      launchAdWebView(paramView.getContext());
    }
  }

  public void recordClick(View paramView)
  {
    a.b(paramView.getContext(), this);
  }

  public void recordShow(Context paramContext)
  {
    a.a(paramContext, this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.MyUrlAdvert
 * JD-Core Version:    0.6.0
 */