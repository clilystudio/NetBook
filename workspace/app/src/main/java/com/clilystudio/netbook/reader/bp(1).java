package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChapterKeysRoot;

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
 * Qualified Name:     com.clilystudio.netbook.reader.bp
 * JD-Core Version:    0.6.0
 */