package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

final class h extends e<String, Void, ResultStatus>
{
  private h(FavUGCListFragment paramFavUGCListFragment)
  {
  }

  private static ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ResultStatus localResultStatus = b.b().E(paramArrayOfString[0], paramArrayOfString[1]);
      return localResultStatus;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.h
 * JD-Core Version:    0.6.2
 */