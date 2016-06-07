package com.ushaqi.zhuishushenqi.util;

import android.support.design.widget.am;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.db.AccountInfo;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.w;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Root;

final class M extends S<Root>
{
  M(J paramJ)
  {
  }

  protected final Root a(ApiService paramApiService, String[] paramArrayOfString)
  {
    return paramApiService.M(paramArrayOfString[0]);
  }

  protected final void b(Root paramRoot)
  {
    this.a.b(0);
    am.b(J.a(this.a), System.currentTimeMillis());
    Account localAccount = am.e();
    if (localAccount != null)
    {
      AccountInfo localAccountInfo = AccountInfo.getByToken(localAccount.getToken());
      if (localAccountInfo != null)
      {
        localAccountInfo.setPrevUnimpNotif(0);
        localAccountInfo.save();
      }
    }
    i.a().c(new w());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.M
 * JD-Core Version:    0.6.0
 */