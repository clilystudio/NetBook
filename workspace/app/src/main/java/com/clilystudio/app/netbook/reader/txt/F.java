package com.clilystudio.app.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.reader.o;

final class F extends BroadcastReceiver
{
  F(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    int j = paramIntent.getIntExtra("level", 0);
    int k = paramIntent.getIntExtra("scale", 100);
    int m = j * 100 / k;
    if (ReaderTxtActivity.N(this.a) == m);
    while (true)
    {
      return;
      ReaderTxtActivity.g(this.a, m);
      o[] arrayOfo = ReaderTxtActivity.d(this.a);
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
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.F
 * JD-Core Version:    0.6.2
 */