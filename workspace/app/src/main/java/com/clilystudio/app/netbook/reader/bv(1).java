package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import com.clilystudio.app.netbook.util.adutil.BaseShelfAd;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bv
 * JD-Core Version:    0.6.2
 */