package com.clilystudio.netbook.reader.txt;

import com.iflytek.cloud.InitListener;

final class e
  implements InitListener
{
  e(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onInit(int paramInt)
  {
    if (paramInt != 0)
      com.clilystudio.netbook.util.e.a(this.a, "初始化语音组件失败,请退出后重试");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.e
 * JD-Core Version:    0.6.0
 */