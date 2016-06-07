package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.MyApplication;

final class O
  implements View.OnClickListener
{
  O(ReadModeItem paramReadModeItem, int paramInt1, int paramInt2)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a != this.b)
    {
      MyApplication.a().c(ReadModeItem.a(this.c));
      am.c(ReadModeItem.a(this.c), this.b);
      ReadModeItem.a(this.c, this.b);
    }
    ReadModeItem.b(this.c).finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.O
 * JD-Core Version:    0.6.0
 */