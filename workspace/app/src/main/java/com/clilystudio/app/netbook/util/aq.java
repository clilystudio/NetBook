package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.api.b;

final class aq extends Thread
{
  aq(String paramString1, String paramString2, String paramString3)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().b(am_CommonUtils.e_getAccount().getToken(), this.a, this.b, this.c);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.aq
 * JD-Core Version:    0.6.2
 */