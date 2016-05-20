package com.clilystudio.app.netbook.reader;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.util.p;

final class v
  implements View.OnClickListener
{
  v(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    o.a(this.a, false);
    new p(o.a(this.a)).a();
    new Handler().postDelayed(new w(this), 2000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.v
 * JD-Core Version:    0.6.2
 */