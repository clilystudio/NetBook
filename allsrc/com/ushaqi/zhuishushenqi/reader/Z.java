package com.ushaqi.zhuishushenqi.reader;

import android.support.design.widget.am;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.model.Chapter;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import com.ushaqi.zhuishushenqi.model.ChapterRoot;
import java.util.Map;

abstract class Z
  implements Runnable
{
  private int a;

  public Z(Reader paramReader, int paramInt)
  {
    this.a = paramInt;
  }

  public abstract void a(ReaderChapter paramReaderChapter);

  public void run()
  {
    boolean bool1 = true;
    ChapterLink[] arrayOfChapterLink = this.b.d();
    if ((arrayOfChapterLink.length > 0) && (this.a >= arrayOfChapterLink.length))
      this.a = (-1 + arrayOfChapterLink.length);
    ChapterLink localChapterLink1 = arrayOfChapterLink[this.a];
    ReaderChapter localReaderChapter;
    boolean bool2;
    if (localChapterLink1 == null)
    {
      localReaderChapter = new ReaderChapter();
      bool2 = bool1;
      if (!bool2)
        break label152;
      if ((Reader.o(this.b) != 5) && (Reader.o(this.b) != 10))
        break label142;
      localReaderChapter.setStatus(-2);
    }
    while (true)
    {
      this.b.a.put(Integer.valueOf(this.a), localReaderChapter);
      a(localReaderChapter);
      return;
      bool2 = localChapterLink1.getUnreadble();
      localReaderChapter = Reader.a(this.b, localChapterLink1, this.a);
      break;
      label142: localReaderChapter.setStatus(-3);
      continue;
      label152: if (Reader.f(this.b))
        try
        {
          localReaderChapter.setBody(a.a(Reader.g(this.b), arrayOfChapterLink, this.a).getChapter().getBody());
        }
        catch (Exception localException)
        {
        }
      ChapterRoot localChapterRoot;
      do
      {
        localReaderChapter.setStatus(-1);
        break;
        localChapterRoot = Reader.b(this.b, localChapterLink1, this.a);
      }
      while ((localChapterRoot == null) || (localChapterRoot.getChapter() == null));
      Chapter localChapter = localChapterRoot.getChapter();
      if (localChapter.getBody() != null)
      {
        localReaderChapter.setBody(localChapter.getBody());
        localReaderChapter.setCpContent(localChapter.getContent());
        localReaderChapter.setId(localChapter.getId());
        localReaderChapter.setIsVip(localChapter.isVip());
        if (localChapter.getLink() != null)
          localReaderChapter.setLink(localChapter.getLink());
        ChapterLink localChapterLink2 = (ChapterLink)Reader.p(this.b).get(localChapter.getId());
        if (localChapterLink2 == null)
          continue;
        if ((localChapterLink2.isVip()) || (localChapter.isVip()));
        while (true)
        {
          localReaderChapter.setIsVip(bool1);
          localReaderChapter.setCurrency(localChapterLink2.getCurrency());
          String str = (String)this.b.e().get(localReaderChapter.getId());
          if (str == null)
            break;
          localReaderChapter.setKey(str);
          a.a(Reader.q(this.b), Reader.h(this.b), am.e(localReaderChapter.getLink()), localReaderChapter);
          break;
          bool1 = false;
        }
      }
      localReaderChapter.setStatus(localChapterRoot.getStatus());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.Z
 * JD-Core Version:    0.6.0
 */