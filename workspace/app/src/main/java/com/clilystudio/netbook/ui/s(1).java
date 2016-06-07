package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.umeng.a.b;

final class s
  implements DialogInterface.OnClickListener
{
  s(AudiobookCategoryActivity paramAudiobookCategoryActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("http://m.ximalaya.com/?from=alex-04"));
    this.a.startActivity(localIntent);
    b.a(this.a, "ximalaya_url_click");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.s
 * JD-Core Version:    0.6.0
 */