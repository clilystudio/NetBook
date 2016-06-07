package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class cF
  implements View.OnClickListener
{
  cF(ReaderWebActivity paramReaderWebActivity, AlertDialog paramAlertDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReaderWebActivity.b(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cF
 * JD-Core Version:    0.6.0
 */