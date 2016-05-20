package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UgcFilterRoot;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.ai
 * JD-Core Version:    0.6.2
 */