package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.os.Bundle;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.adapter.X;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot;

final class as extends e<String, Void, UGCBookListRoot>
{
  private as(UGCMainListFragment paramUGCMainListFragment)
  {
  }

  private UGCBookListRoot a()
  {
    if (!isCancelled())
      try
      {
        b.a();
        UGCBookListRoot localUGCBookListRoot = b.b().a(this.a.getArguments().getString("duration"), this.a.getArguments().getString("sort"), UGCMainListFragment.h(this.a).getCount(), 20, this.a.b());
        return localUGCBookListRoot;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.as
 * JD-Core Version:    0.6.0
 */