package com.ushaqi.zhuishushenqi.reader;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.util.t;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cl
 * JD-Core Version:    0.6.0
 */