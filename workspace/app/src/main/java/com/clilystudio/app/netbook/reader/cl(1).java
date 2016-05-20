package com.clilystudio.app.netbook.reader;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.clilystudio.app.netbook.util.t;

final class cl extends Handler
{
  cl(ReaderTtsSetWidget paramReaderTtsSetWidget)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what < ReaderTtsSetWidget.g(this.a).length) && (paramMessage.arg1 > 0))
    {
      ReaderTtsSetWidget.g(this.a)[paramMessage.what].setText(t.b(1000 * paramMessage.arg1));
      return;
    }
    ReaderTtsSetWidget.a(this.a, paramMessage.what, true);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cl
 * JD-Core Version:    0.6.2
 */