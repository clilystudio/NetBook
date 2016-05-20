package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UserInfo;
import java.io.IOException;

final class P extends e<String, Void, UserInfo>
{
  private P(HomeTopicFragment paramHomeTopicFragment)
  {
  }

  private UserInfo a(String[] paramArrayOfString)
  {
    try
    {
      UserInfo localUserInfo = b.b().K(paramArrayOfString[0]);
      return localUserInfo;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.P
 * JD-Core Version:    0.6.2
 */