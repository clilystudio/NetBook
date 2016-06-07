package com.ushaqi.zhuishushenqi.reader;

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
    if ("com.ushaqi.zhuishushenqi.dlReceiver".equals(paramIntent.getAction()))
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bg
 * JD-Core Version:    0.6.0
 */