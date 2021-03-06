package com.ushaqi.zhuishushenqi.model;

import android.content.Context;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.util.adutil.BaseShelfAd;
import com.ushaqi.zhuishushenqi.util.y;

public class MyApkAdvert extends BaseShelfAd
{
  public String getDownloadTitle(Context paramContext)
  {
    String str1 = a.c(getApkSize());
    if (a.r(MyApplication.a()) == 1)
    {
      String str3 = MyApplication.a().getString(2131034503);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = getTitle();
      arrayOfObject2[1] = str1;
      return String.format(str3, arrayOfObject2);
    }
    String str2 = MyApplication.a().getString(2131034502);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = getTitle();
    arrayOfObject1[1] = str1;
    return String.format(str2, arrayOfObject1);
  }

  public boolean isApk()
  {
    return true;
  }

  public void onAdClick(View paramView)
  {
    AppItem localAppItem = new AppItem(this);
    new y(paramView.getContext(), localAppItem).a();
  }

  public void recordClick(View paramView)
  {
    a.b(paramView.getContext(), this);
  }

  public void recordDownload(Context paramContext)
  {
    if (this != null)
      b.a(paramContext, "zssq_ad_download_" + getPosition(), getTitle());
  }

  public void recordShow(Context paramContext)
  {
    a.a(paramContext, this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.MyApkAdvert
 * JD-Core Version:    0.6.0
 */