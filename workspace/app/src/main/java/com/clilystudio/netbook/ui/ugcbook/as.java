package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCBookListRoot;

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
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.as
 * JD-Core Version:    0.6.0
 */