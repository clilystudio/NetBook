package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.adapter.X;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

final class d extends e<String, Void, UGCBookListRoot>
{
  private d(AbsUGCListFragment paramAbsUGCListFragment)
  {
  }

  private UGCBookListRoot a()
  {
    if (!isCancelled())
    {
      try
      {
        Account localAccount = am.a((BaseActivity)this.a.getActivity());
        if (localAccount != null)
        {
          UGCBookListRoot localUGCBookListRoot = this.a.a(localAccount, this.a.c.getCount());
          return localUGCBookListRoot;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return null;
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.d
 * JD-Core Version:    0.6.0
 */