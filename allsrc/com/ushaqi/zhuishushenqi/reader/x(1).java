package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.util.I;

final class x
  implements View.OnClickListener
{
  x(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    if ((o.a(this.a) instanceof ReaderActivity))
    {
      ((ReaderActivity)o.a(this.a)).i();
      b.a(o.a(this.a), "paying_page_cancel", I.b);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.x
 * JD-Core Version:    0.6.0
 */