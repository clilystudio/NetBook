package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayBalance;
import java.io.IOException;

final class I extends c<String, PayBalance>
{
  public I(PayAccountActivity paramPayAccountActivity, Activity paramActivity)
  {
    super(paramActivity);
  }

  public I(PayAccountActivity paramPayAccountActivity, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private PayBalance a(String[] paramArrayOfString)
  {
    try
    {
      PayBalance localPayBalance = b.b().b(paramArrayOfString[0]);
      return localPayBalance;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.I
 * JD-Core Version:    0.6.0
 */