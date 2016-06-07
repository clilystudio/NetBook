package com.clilystudio.netbook.reader;

import com.iflytek.cloud.InitListener;
import com.clilystudio.netbook.util.e;

final class al
  implements InitListener
{
  al(ReaderActivity paramReaderActivity)
  {
  }

  public final void onInit(int paramInt)
  {
    if (paramInt != 0)
      e.a(this.a, "初始化语音组件失败,请退出后重试");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.al
 * JD-Core Version:    0.6.0
 */