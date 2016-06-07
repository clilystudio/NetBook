package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.umeng.a.b;

final class k
  implements DialogInterface.OnClickListener
{
  k(j paramj, String paramString, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!TextUtils.isEmpty(this.a))
    {
      b.a(this.b, "visit_17k_webpage");
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(this.a));
      this.b.startActivity(localIntent);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.k
 * JD-Core Version:    0.6.0
 */