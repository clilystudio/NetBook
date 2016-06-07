package com.alipay.sdk.g;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.text.TextUtils;

public final class d
{
  private static boolean a;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static Dialog a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    if (a)
    {
      if (!TextUtils.isEmpty(paramString4))
        localBuilder.setPositiveButton(paramString4, paramOnClickListener2);
      if (!TextUtils.isEmpty(paramString3))
        localBuilder.setNegativeButton(paramString3, paramOnClickListener1);
    }
    AlertDialog localAlertDialog;
    while (true)
    {
      localBuilder.setTitle(paramString1);
      localBuilder.setMessage(paramString2);
      localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.setOnKeyListener(new e());
      try
      {
        localAlertDialog.show();
        return localAlertDialog;
        if (!TextUtils.isEmpty(paramString3))
          localBuilder.setPositiveButton(paramString3, paramOnClickListener1);
        if (TextUtils.isEmpty(paramString4))
          continue;
        localBuilder.setNegativeButton(paramString4, paramOnClickListener2);
      }
      catch (Throwable localThrowable)
      {
      }
    }
    return localAlertDialog;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.g.d
 * JD-Core Version:    0.6.0
 */