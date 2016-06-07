package com.ushaqi.zhuishushenqi.ui.user;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UserInfo;
import java.io.IOException;

final class r extends e<String, Void, UserInfo>
{
  private r(ModifyUserInfoActivity paramModifyUserInfoActivity)
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.r
 * JD-Core Version:    0.6.0
 */