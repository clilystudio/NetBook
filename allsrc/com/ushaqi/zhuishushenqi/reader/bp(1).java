package com.ushaqi.zhuishushenqi.reader;

import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChapterKeysRoot;

final class bp extends e<Void, Void, ChapterKeysRoot>
{
  private bp(ReaderActivity paramReaderActivity)
  {
  }

  private ChapterKeysRoot a()
  {
    try
    {
      b.a();
      ChapterKeysRoot localChapterKeysRoot = b.b().g(am.e().getToken(), ReaderActivity.M(this.a));
      return localChapterKeysRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bp
 * JD-Core Version:    0.6.0
 */