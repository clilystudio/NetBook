package com.ushaqi.zhuishushenqi.util.adutil;

import android.content.Context;
import android.view.View;
import com.ushaqi.zhuishushenqi.model.Advert;
import uk.me.lewisdeane.ldialogs.h;

public class BaseShelfAd extends Advert
{
  protected Object response;
  public int showCount;

  public String getDownloadTitle(Context paramContext)
  {
    return null;
  }

  public boolean isApk()
  {
    return false;
  }

  public void onAdClick(View paramView)
  {
  }

  public void processClick(View paramView)
  {
    Context localContext = paramView.getContext();
    if (isApk())
    {
      h localh = new h(localContext);
      localh.e = getDownloadTitle(localContext);
      localh.a(true).a("确认", new j(this, paramView, localContext)).b("取消", new i(this)).b();
    }
    while (true)
    {
      recordClick(paramView);
      return;
      onAdClick(paramView);
    }
  }

  public void recordClick(View paramView)
  {
  }

  public void recordDownload(Context paramContext)
  {
  }

  public void recordShow(Context paramContext)
  {
  }

  public void setResponse(Object paramObject)
  {
    this.response = paramObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.BaseShelfAd
 * JD-Core Version:    0.6.0
 */