package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PurchaseVipResult;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ak
 * JD-Core Version:    0.6.2
 */