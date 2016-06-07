package com.ushaqi.zhuishushenqi.reader;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.util.p;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.v
 * JD-Core Version:    0.6.0
 */