package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.util.e;

final class B
  implements View.OnClickListener
{
  B(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    if (a.t(o.a(this.a)))
    {
      o.c(this.a).setVisibility(8);
      if (o.d(this.a) != null)
        o.d(this.a).a(o.b(this.a).l());
      return;
    }
    e.a(o.a(this.a), 2131034418);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.B
 * JD-Core Version:    0.6.0
 */