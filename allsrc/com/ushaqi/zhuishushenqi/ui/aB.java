package com.ushaqi.zhuishushenqi.ui;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aB
 * JD-Core Version:    0.6.0
 */