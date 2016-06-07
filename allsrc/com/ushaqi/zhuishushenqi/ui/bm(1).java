package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.MhdListRoot;
import java.io.IOException;

final class bm extends e<Void, Void, MhdListRoot>
{
  private bm(MhdListActivity paramMhdListActivity)
  {
  }

  private MhdListRoot a()
  {
    try
    {
      MhdListRoot localMhdListRoot = b.b().g();
      return localMhdListRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bm
 * JD-Core Version:    0.6.0
 */