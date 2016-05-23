package com.clilystudio.app.netbook.ui.user;

import android.net.Uri;
import com.clilystudio.app.netbook.am_CommonUtils;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Root;
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
      Root localRoot = b.b().a(am_CommonUtils.a_getLoginAccount(this.b).getToken(), this.a);
      return localRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.t
 * JD-Core Version:    0.6.2
 */