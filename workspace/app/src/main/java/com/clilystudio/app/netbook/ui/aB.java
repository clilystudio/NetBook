package com.clilystudio.app.netbook.ui;

import android.os.Handler;
import android.os.Message;

final class aB extends Handler
{
  aB(BookInfoActivity paramBookInfoActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    BookInfoActivity.a(this.a, true);
    BookInfoActivity.b(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aB
 * JD-Core Version:    0.6.2
 */