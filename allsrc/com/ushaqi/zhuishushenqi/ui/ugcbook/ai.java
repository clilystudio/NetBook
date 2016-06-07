package com.ushaqi.zhuishushenqi.ui.ugcbook;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UgcFilterRoot;
import java.io.IOException;

final class ai extends e<Void, Void, UgcFilterRoot>
{
  private ai(UGCMainActivity paramUGCMainActivity)
  {
  }

  private UgcFilterRoot a()
  {
    try
    {
      UgcFilterRoot localUgcFilterRoot = b.b().o();
      return localUgcFilterRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.ai
 * JD-Core Version:    0.6.0
 */