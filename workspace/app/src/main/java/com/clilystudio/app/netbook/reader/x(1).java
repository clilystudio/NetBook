package com.clilystudio.app.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.util.I;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.x
 * JD-Core Version:    0.6.2
 */