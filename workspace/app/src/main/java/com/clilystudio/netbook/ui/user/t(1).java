package com.clilystudio.netbook.ui.user;

import android.net.Uri;
import android.support.design.widget.am;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Root;
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
 * Qualified Name:     com.clilystudio.netbook.ui.user.t
 * JD-Core Version:    0.6.0
 */