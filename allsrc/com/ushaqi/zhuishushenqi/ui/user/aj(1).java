package com.ushaqi.zhuishushenqi.ui.user;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.VipPlan;
import java.io.IOException;

final class aj extends e<Void, Void, VipPlan>
{
  private aj(RemoveAdActivity paramRemoveAdActivity)
  {
  }

  private VipPlan a()
  {
    try
    {
      VipPlan localVipPlan = b.b().m();
      return localVipPlan;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aj
 * JD-Core Version:    0.6.0
 */