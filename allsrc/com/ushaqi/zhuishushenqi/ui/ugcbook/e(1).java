package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

final class e extends com.ushaqi.zhuishushenqi.a.e<String, Void, UGCBookListRoot>
{
  private e(AbsUGCListFragment paramAbsUGCListFragment)
  {
  }

  private UGCBookListRoot a()
  {
    try
    {
      Account localAccount = am.a((BaseActivity)this.a.getActivity());
      if (localAccount != null)
      {
        UGCBookListRoot localUGCBookListRoot = this.a.a(localAccount, 0);
        return localUGCBookListRoot;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.e
 * JD-Core Version:    0.6.0
 */