package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import com.ushaqi.zhuishushenqi.util.adutil.BaseShelfAd;

final class bv
  implements DialogInterface.OnClickListener
{
  bv(bt parambt, View paramView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReaderMenuFragment.j(this.b.a).onAdClick(this.a);
    ReaderMenuFragment.j(this.b.a).recordClick(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bv
 * JD-Core Version:    0.6.0
 */