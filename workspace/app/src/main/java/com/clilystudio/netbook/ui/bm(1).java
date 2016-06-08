package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.MhdListRoot;
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
 * Qualified Name:     com.clilystudio.netbook.ui.bm
 * JD-Core Version:    0.6.0
 */