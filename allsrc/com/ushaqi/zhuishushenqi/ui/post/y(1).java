package com.ushaqi.zhuishushenqi.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class y
  implements DialogInterface.OnClickListener
{
  y(AddGirlTopicActivity paramAddGirlTopicActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.y
 * JD-Core Version:    0.6.0
 */