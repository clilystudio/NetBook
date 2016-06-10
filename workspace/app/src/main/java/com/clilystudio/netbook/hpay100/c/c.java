package com.clilystudio.netbook.hpay100.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.support.design.widget.K;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class c
{
  public ColorStateList a;
  public PorterDuff.Mode b;
  public boolean c;
  public boolean d;

  public static Dialog a(Activity paramActivity, String paramString, boolean paramBoolean, K paramK)
  {
    int i = com.clilystudio.netbook.hpay100.a_Pack.a.a(paramActivity, "layout", "hpay_text_progress");
    View localView = LayoutInflater.from(paramActivity).inflate(i, null);
    ((TextView)localView.findViewById(com.clilystudio.netbook.hpay100.a_Pack.a.a(paramActivity, "id", "alert_text_show_id"))).setText(paramString);
    Dialog localDialog = new Dialog(paramActivity, com.clilystudio.netbook.hpay100.a_Pack.a.a(paramActivity, "style", "hpay_progress_dialog"));
    localDialog.setContentView(localView);
    localDialog.setCancelable(false);
    localDialog.setCanceledOnTouchOutside(false);
    localDialog.setOnCancelListener(new k(null));
    localDialog.setOnKeyListener(new l(false, localDialog));
    return localDialog;
  }

  public static void a(Activity paramActivity, String paramString, int paramInt)
  {
    if (paramActivity == null)
      return;
    paramActivity.runOnUiThread(new m(paramActivity, paramString, 1));
  }

  public static void a(Context paramContext, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    e locale = new e(paramContext);
    locale.a(paramString).a("取消", new n(null)).b("确定", new o(paramOnClickListener2));
    a locala = locale.a(paramInt);
    locala.setCancelable(false);
    locala.setCanceledOnTouchOutside(false);
    locala.show();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.c.c
 * JD-Core Version:    0.6.0
 */