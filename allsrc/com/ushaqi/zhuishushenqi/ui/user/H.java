package com.ushaqi.zhuishushenqi.ui.user;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayResult;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.H
 * JD-Core Version:    0.6.0
 */