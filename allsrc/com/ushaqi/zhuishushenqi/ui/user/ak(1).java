package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PurchaseVipResult;
import java.io.IOException;

final class ak extends c<String, PurchaseVipResult>
{
  public ak(RemoveAdActivity paramRemoveAdActivity, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private PurchaseVipResult a(String[] paramArrayOfString)
  {
    try
    {
      PurchaseVipResult localPurchaseVipResult = b.b().t(paramArrayOfString[0], paramArrayOfString[1]);
      return localPurchaseVipResult;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.ak
 * JD-Core Version:    0.6.0
 */