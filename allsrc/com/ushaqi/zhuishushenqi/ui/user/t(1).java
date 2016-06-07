package com.ushaqi.zhuishushenqi.ui.user;

import android.net.Uri;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Root;
import java.io.IOException;

final class t extends c<String, Root>
{
  private Uri a;

  public t(ModifyUserInfoActivity paramModifyUserInfoActivity1, ModifyUserInfoActivity paramModifyUserInfoActivity2, String paramString, Uri paramUri)
  {
    super(paramModifyUserInfoActivity2, paramString);
    this.a = paramUri;
  }

  private Root a()
  {
    try
    {
      Root localRoot = b.b().a(am.a(this.b).getToken(), this.a);
      return localRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.t
 * JD-Core Version:    0.6.0
 */