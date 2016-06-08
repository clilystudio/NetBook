package com.clilystudio.netbook.ui.ugcbook;

import android.support.design.widget.am;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.ui.BaseActivity;

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
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.d
 * JD-Core Version:    0.6.0
 */