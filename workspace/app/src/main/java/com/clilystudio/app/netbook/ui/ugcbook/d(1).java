package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.am_CommonUtils;
import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.adapter.X;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.ui.BaseActivity;

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
        Account localAccount = am_CommonUtils.a((BaseActivity)this.a.getActivity());
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.d
 * JD-Core Version:    0.6.2
 */