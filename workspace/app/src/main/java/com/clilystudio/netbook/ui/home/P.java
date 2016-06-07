package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserInfo;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.P
 * JD-Core Version:    0.6.0
 */