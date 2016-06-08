package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;
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
 * Qualified Name:     com.clilystudio.netbook.reader.C
 * JD-Core Version:    0.6.0
 */