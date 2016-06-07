package com.ushaqi.zhuishushenqi.reader.txt;

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
      com.ushaqi.zhuishushenqi.util.e.a(this.a, "初始化语音组件失败,请退出后重试");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.e
 * JD-Core Version:    0.6.0
 */