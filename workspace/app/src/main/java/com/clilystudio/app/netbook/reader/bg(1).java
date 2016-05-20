package com.clilystudio.app.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

final class bg extends BroadcastReceiver
{
  bg(ReaderActivity paramReaderActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.clilystudio.app.netbook.dlReceiver".equals(paramIntent.getAction()))
    {
      String str = paramIntent.getStringExtra("bookId");
      if (ReaderActivity.M(this.a).equals(str))
      {
        ReaderActivity.g(this.a, true);
        ReaderActivity.l(this.a, paramIntent.getIntExtra("SerDlCurrentCount", 0));
        ReaderActivity.k(this.a, paramIntent.getIntExtra("SerDlChapterCount", 0));
        ReaderActivity.a(this.a, paramIntent.getStringExtra("SerDlLink"));
        ReaderActivity.m(this.a, paramIntent.getIntExtra("SerDlStopFlag", 0));
        ReaderActivity.aj(this.a).sendMessage(ReaderActivity.aj(this.a).obtainMessage());
      }
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bg
 * JD-Core Version:    0.6.2
 */