package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCBookListRoot;

final class at extends e<String, Void, UGCBookListRoot>
{
  private at(UGCMainListFragment paramUGCMainListFragment)
  {
  }

  private UGCBookListRoot a()
  {
    try
    {
      b.a();
      UGCBookListRoot localUGCBookListRoot = b.b().a(this.a.getArguments().getString("duration"), this.a.getArguments().getString("sort"), 0, 20, this.a.b());
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
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.at
 * JD-Core Version:    0.6.0
 */