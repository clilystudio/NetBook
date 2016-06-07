package com.ushaqi.zhuishushenqi.reader;

import android.text.Html;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import com.ushaqi.zhuishushenqi.model.mixtoc.SsTocRoot;
import com.ushaqi.zhuishushenqi.model.mixtoc.SsTocRow;
import java.io.IOException;

final class g
  implements Runnable
{
  g(f paramf, int paramInt1, int paramInt2, ChapterLink[][] paramArrayOfChapterLink)
  {
  }

  public final void run()
  {
    try
    {
      SsTocRoot localSsTocRoot2 = b.b().a(this.a, this.b, f.a(this.d));
      localSsTocRoot1 = localSsTocRoot2;
      if ((localSsTocRoot1 != null) && (localSsTocRoot1.getRows() != null))
      {
        SsTocRow[] arrayOfSsTocRow = localSsTocRoot1.getRows();
        arrayOfChapterLink = new ChapterLink[arrayOfSsTocRow.length];
        for (int i = 0; i < arrayOfSsTocRow.length; i++)
        {
          SsTocRow localSsTocRow = arrayOfSsTocRow[i];
          ChapterLink localChapterLink = new ChapterLink();
          localChapterLink.setTitle(String.valueOf(Html.fromHtml(localSsTocRow.getSerialname())));
          localChapterLink.setLink(String.valueOf(localSsTocRow.getSerialid()));
          arrayOfChapterLink[i] = localChapterLink;
        }
      }
    }
    catch (IOException localIOException)
    {
      ChapterLink[] arrayOfChapterLink;
      while (true)
      {
        localIOException.printStackTrace();
        SsTocRoot localSsTocRoot1 = null;
      }
      this.c[(-1 + this.a)] = arrayOfChapterLink;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.g
 * JD-Core Version:    0.6.0
 */