package android.support.v7.app;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class e
  implements View.OnClickListener
{
  e(d paramd)
  {
  }

  public final void onClick(View paramView)
  {
    Message localMessage;
    if ((paramView == d.a(this.a)) && (d.b(this.a) != null))
      localMessage = Message.obtain(d.b(this.a));
    while (true)
    {
      if (localMessage != null)
        localMessage.sendToTarget();
      d.h(this.a).obtainMessage(1, d.g(this.a)).sendToTarget();
      return;
      if ((paramView == d.c(this.a)) && (d.d(this.a) != null))
      {
        localMessage = Message.obtain(d.d(this.a));
        continue;
      }
      if ((paramView == d.e(this.a)) && (d.f(this.a) != null))
      {
        localMessage = Message.obtain(d.f(this.a));
        continue;
      }
      localMessage = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.e
 * JD-Core Version:    0.6.0
 */