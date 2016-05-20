package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.Bundle;
import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UGCBookListRoot;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.at
 * JD-Core Version:    0.6.2
 */