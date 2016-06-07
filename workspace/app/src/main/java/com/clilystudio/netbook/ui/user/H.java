package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayResult;
import java.io.IOException;

final class H extends c<String, PayResult>
{
  public H(PayAccountActivity paramPayAccountActivity, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private PayResult a(String[] paramArrayOfString)
  {
    try
    {
      PayResult localPayResult = b.b().a(paramArrayOfString[0], PayAccountActivity.a(this.a));
      return localPayResult;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.H
 * JD-Core Version:    0.6.0
 */