package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayBalance;
import java.io.IOException;

final class C extends c<String, PayBalance>
{
  public C(o paramo, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private static PayBalance a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.C
 * JD-Core Version:    0.6.0
 */