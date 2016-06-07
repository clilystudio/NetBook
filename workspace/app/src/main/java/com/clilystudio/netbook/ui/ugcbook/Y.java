package com.clilystudio.netbook.ui.ugcbook;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class Y
  implements CompoundButton.OnCheckedChangeListener
{
  Y(X paramX, int paramInt)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (X.a(this.b))
      return;
    UGCGuideSelectBookActivity.c(this.b.a)[this.a] = paramBoolean;
    UGCGuideSelectBookActivity.a(this.b.a, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.Y
 * JD-Core Version:    0.6.0
 */