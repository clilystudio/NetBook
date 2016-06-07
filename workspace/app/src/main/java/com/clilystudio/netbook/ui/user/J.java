package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserVipInfo;
import java.io.IOException;

final class J extends e<String, Void, UserVipInfo>
{
  J(PayAccountActivity paramPayAccountActivity)
  {
  }

  private UserVipInfo a(String[] paramArrayOfString)
  {
    try
    {
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.J
 * JD-Core Version:    0.6.0
 */