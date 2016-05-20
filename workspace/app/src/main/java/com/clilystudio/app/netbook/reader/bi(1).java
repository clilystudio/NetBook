package com.clilystudio.app.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bi extends BroadcastReceiver
{
  bi(ReaderActivity paramReaderActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    int j = paramIntent.getIntExtra("level", 0);
    int k = paramIntent.getIntExtra("scale", 100);
    int m = j * 100 / k;
    if (ReaderActivity.ap(this.a) == m);
    while (true)
    {
      return;
      ReaderActivity.n(this.a, m);
      o[] arrayOfo = ReaderActivity.i(this.a);
      int n = arrayOfo.length;
      while (i < n)
      {
        arrayOfo[i].a(m);
        i++;
      }
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bi
 * JD-Core Version:    0.6.2
 */