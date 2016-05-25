package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UserVipInfo;
import java.io.IOException;

final class h extends e<String, Void, UserVipInfo>
{
  h(HomeActivity paramHomeActivity)
  {
  }

  private UserVipInfo a(String[] paramArrayOfString)
  {
    try
    {
      HomeActivity.f(this.a);
      UserVipInfo localUserVipInfo = b.b().O(paramArrayOfString[0]);
      return localUserVipInfo;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.h
 * JD-Core Version:    0.6.2
 */