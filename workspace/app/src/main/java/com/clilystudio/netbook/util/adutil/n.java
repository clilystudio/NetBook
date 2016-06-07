package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.util.c;

public final class n
{
  private GdtShelfAdContainer a = new GdtShelfAdContainer();
  private BaiduShelfAdContainer b = new BaiduShelfAdContainer();

  public static void a(Advert paramAdvert, View paramView)
  {
    try
    {
      if ((paramAdvert instanceof BaiduShelfAdContainer.BaiduAdvert))
      {
        ((BaiduShelfAdContainer.BaiduAdvert)paramAdvert).baiduRecord(paramView);
        return;
      }
      if ((paramAdvert instanceof GdtShelfAdContainer.GdtAdvert))
      {
        ((GdtShelfAdContainer.GdtAdvert)paramAdvert).gdtRecord(paramView);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static Advert b(Context paramContext, String paramString)
  {
    Advert localAdvert = c.a().a(paramString);
    if (localAdvert == null)
      new n().a(paramContext, paramString);
    return localAdvert;
  }

  public final void a(Context paramContext, String paramString)
  {
    if (k.c())
      this.a.a(paramContext, paramString);
    do
      return;
    while (!k.b());
    this.b.a(paramContext, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.n
 * JD-Core Version:    0.6.0
 */