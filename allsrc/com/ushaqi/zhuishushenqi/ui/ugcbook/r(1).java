package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.UGCBookDetailRoot;
import java.io.IOException;

final class r extends e<String, Void, UGCBookDetailRoot>
{
  private r(UGCDetailActivity paramUGCDetailActivity)
  {
  }

  private UGCBookDetailRoot a(String[] paramArrayOfString)
  {
    try
    {
      if (UGCDetailActivity.k(this.a))
      {
        Account localAccount = am.a(this.a);
        if (localAccount != null)
          return b.b().C(localAccount.getToken(), paramArrayOfString[0]);
      }
      else
      {
        UGCBookDetailRoot localUGCBookDetailRoot = b.b().U(paramArrayOfString[0]);
        return localUGCBookDetailRoot;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.r
 * JD-Core Version:    0.6.0
 */