package com.clilystudio.app.netbook.ui.user;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PayBalance;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.I
 * JD-Core Version:    0.6.2
 */