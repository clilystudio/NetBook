package com.clilystudio.app.netbook.reader;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import java.util.LinkedList;

final class bh extends Handler
{
  bh(ReaderActivity paramReaderActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    String str = "";
    if ((ReaderActivity.ak(this.a) == 0) && (ReaderActivity.al(this.a) < ReaderActivity.ai(this.a)))
      str = "正在缓存: " + ReaderActivity.D(this.a) + " ( " + ReaderActivity.al(this.a) + "/" + ReaderActivity.ai(this.a) + " )...";
    while (true)
    {
      ReaderActivity.am(this.a).setText(str);
      ReaderActivity.ao(this.a).add(ReaderActivity.an(this.a));
      return;
      if ((ReaderActivity.ak(this.a) == -1) || (ReaderActivity.al(this.a) >= ReaderActivity.ai(this.a)))
        str = "缓存完成: " + ReaderActivity.D(this.a);
      else if (ReaderActivity.ak(this.a) == -2)
        str = "已停止: " + ReaderActivity.D(this.a) + " ( " + ReaderActivity.al(this.a) + "/" + ReaderActivity.ai(this.a) + " )";
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bh
 * JD-Core Version:    0.6.2
 */