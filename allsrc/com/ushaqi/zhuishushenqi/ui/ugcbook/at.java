package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.os.Bundle;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.at
 * JD-Core Version:    0.6.0
 */