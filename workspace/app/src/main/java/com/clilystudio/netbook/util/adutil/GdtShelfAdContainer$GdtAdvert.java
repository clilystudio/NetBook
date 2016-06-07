package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;

public class GdtShelfAdContainer$GdtAdvert extends BaseShelfAd
{
  public void gdtRecord(View paramView)
  {
    k.a(GdtShelfAdContainer.a(), "onExposured", View.class, this.response, new Object[] { paramView });
  }

  public String getDownloadTitle(Context paramContext)
  {
    String str = (String)k.a(GdtShelfAdContainer.a(), "getTitle", null, this.response, new Object[0]);
    if (a.s(paramContext))
      return String.format(paramContext.getString(2131034507), new Object[] { str });
    return String.format(paramContext.getString(2131034506), new Object[] { str });
  }

  public String getFullImg()
  {
    return getImg();
  }

  public boolean isApk()
  {
    return ((Boolean)k.a(GdtShelfAdContainer.a(), "isAPP", null, this.response, new Object[0])).booleanValue();
  }

  public void onAdClick(View paramView)
  {
    k.a(GdtShelfAdContainer.a(), "onClicked", View.class, this.response, new Object[] { paramView });
  }

  public void recordClick(View paramView)
  {
    b.a(paramView.getContext(), "ad_gdt_shelf_confirm", getPosition());
  }

  public void recordDownload(Context paramContext)
  {
    b.a(paramContext, "ad_gdt_shelf_download", getPosition());
  }

  public void recordShow(Context paramContext)
  {
    b.a(paramContext, "ad_gdt_shelf_show", getPosition());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.GdtShelfAdContainer.GdtAdvert
 * JD-Core Version:    0.6.0
 */