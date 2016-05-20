package com.clilystudio.app.netbook.model;

import android.content.Context;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.ui.AdWebViewActivity;
import com.clilystudio.app.netbook.util.InsideLinkIntent;
import com.clilystudio.app.netbook.util.adutil.BaseShelfAd;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.MyUrlAdvert
 * JD-Core Version:    0.6.2
 */