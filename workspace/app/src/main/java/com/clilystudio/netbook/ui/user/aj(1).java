package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.VipPlan;
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
 * Qualified Name:     com.clilystudio.netbook.ui.user.aj
 * JD-Core Version:    0.6.0
 */