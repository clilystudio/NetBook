package com.ushaqi.zhuishushenqi.reader;

import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.db.SourceRecord;
import com.ushaqi.zhuishushenqi.model.BookInfo;
import com.ushaqi.zhuishushenqi.model.BookTopRoot;
import com.ushaqi.zhuishushenqi.model.BookTopRoot.Favorite;
import com.ushaqi.zhuishushenqi.model.Chapter;
import com.ushaqi.zhuishushenqi.model.ChapterRoot;
import com.ushaqi.zhuishushenqi.model.MixTocRoot;
import com.ushaqi.zhuishushenqi.model.Toc;
import com.ushaqi.zhuishushenqi.model.mixtoc.EsTocItem;
import com.ushaqi.zhuishushenqi.model.mixtoc.EsTocRoot;
import com.ushaqi.zhuishushenqi.model.mixtoc.LdTocResult;
import com.ushaqi.zhuishushenqi.model.mixtoc.LdTocRoot;
import com.ushaqi.zhuishushenqi.model.mixtoc.SgTocBook;
import com.ushaqi.zhuishushenqi.model.mixtoc.SgTocChapter;
import com.ushaqi.zhuishushenqi.model.mixtoc.SgTocRoot;
import com.ushaqi.zhuishushenqi.util.I;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class f
{
  private b a = b.a();
  private int b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;

  public f(int paramInt)
  {
    this.b = paramInt;
  }

  public f(BookReadRecord paramBookReadRecord)
  {
    this.b = paramBookReadRecord.getReadMode();
    this.c = paramBookReadRecord.getBookId();
  }

  public f(BookInfo paramBookInfo, int paramInt)
  {
    this.b = paramInt;
    this.c = paramBookInfo.getId();
  }

  private ChapterRoot a(int paramInt, String paramString)
  {
    try
    {
      ChapterRoot localChapterRoot = b.b().c(this.f, paramInt, paramString);
      return localChapterRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private ChapterRoot a(int paramInt, String paramString1, String paramString2)
  {
    try
    {
      String[] arrayOfString = a.O(this.f);
      if (arrayOfString != null)
      {
        ChapterRoot localChapterRoot = b.b().a(arrayOfString[0], arrayOfString[1], paramInt, paramString1, paramString2);
        return localChapterRoot;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private Toc a(com.ushaqi.zhuishushenqi.model.ChapterLink[] paramArrayOfChapterLink)
  {
    Toc localToc = new Toc();
    localToc.setChapters(paramArrayOfChapterLink);
    localToc.setHost(this.e);
    localToc.set_id(this.d);
    return localToc;
  }

  private List<com.ushaqi.zhuishushenqi.model.ChapterLink> a(int paramInt1, int paramInt2)
  {
    com.ushaqi.zhuishushenqi.model.ChapterLink[][] arrayOfChapterLink; = new com.ushaqi.zhuishushenqi.model.ChapterLink[paramInt2][];
    ArrayList localArrayList1 = new ArrayList();
    for (int i = 1; i <= paramInt2; i++)
    {
      Thread localThread1 = new Thread(new g(this, i, paramInt1, arrayOfChapterLink;));
      localThread1.start();
      localArrayList1.add(localThread1);
    }
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      Thread localThread2 = (Thread)localIterator.next();
      try
      {
        localThread2.join();
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    ArrayList localArrayList2 = new ArrayList();
    int j = arrayOfChapterLink;.length;
    for (int k = 0; ; k++)
    {
      [Lcom.ushaqi.zhuishushenqi.model.ChapterLink localChapterLink;;
      int m;
      if (k < j)
      {
        localChapterLink; = arrayOfChapterLink;[k];
        if (localChapterLink; == null)
          continue;
        m = localChapterLink;.length;
      }
      for (int n = 0; n < m; n++)
      {
        Object localObject = localChapterLink;[n];
        if (localObject == null)
        {
          localArrayList2 = new ArrayList();
          return localArrayList2;
        }
        localArrayList2.add(localObject);
      }
    }
  }

  private ChapterRoot b(int paramInt)
  {
    try
    {
      ChapterRoot localChapterRoot = b.b().c(this.f, paramInt);
      return localChapterRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  private ChapterRoot b(String paramString1, String paramString2)
  {
    try
    {
      ChapterRoot localChapterRoot = b.b().p(paramString1, paramString2);
      return localChapterRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private Toc b()
  {
    try
    {
      MixTocRoot localMixTocRoot2 = b.b().f(this.c);
      localMixTocRoot1 = localMixTocRoot2;
      Toc localToc1 = null;
      if (localMixTocRoot1 != null)
      {
        Toc localToc2 = localMixTocRoot1.getMixToc();
        localToc1 = null;
        if (localToc2 != null)
        {
          localMixTocRoot1.getMixToc().set_id(this.d);
          localToc1 = localMixTocRoot1.getMixToc();
        }
      }
      return localToc1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        MixTocRoot localMixTocRoot1 = null;
      }
    }
  }

  private ChapterRoot c(String paramString)
  {
    try
    {
      ApiService localApiService = b.b();
      if (a.l())
        return localApiService.x(paramString);
      ChapterRoot localChapterRoot = localApiService.y(paramString);
      return localChapterRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private Toc c()
  {
    try
    {
      Toc localToc = b.b().e(this.d);
      return localToc;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private Toc d()
  {
    try
    {
      int m = b.b().w(this.f);
      i = m;
      if (i == 0)
        return null;
    }
    catch (Exception localException)
    {
      int i;
      while (true)
      {
        localException.printStackTrace();
        i = 0;
      }
      int j = 0;
      if (i == 0);
      while (true)
      {
        List localList = a(i, j);
        int k = localList.size();
        if (k <= 0)
          break;
        return a((com.ushaqi.zhuishushenqi.model.ChapterLink[])localList.toArray(new com.ushaqi.zhuishushenqi.model.ChapterLink[k]));
        if (i <= 200)
        {
          j = 1;
          continue;
        }
        j = i / 200;
        if (i % 200 <= 0)
          continue;
        j++;
      }
    }
    return null;
  }

  private Toc e()
  {
    Toc localToc;
    String str3;
    SourceRecord localSourceRecord;
    try
    {
      SgTocRoot localSgTocRoot2 = b.b().s(this.f);
      localSgTocRoot1 = localSgTocRoot2;
      localToc = null;
      if (localSgTocRoot1 != null)
      {
        SgTocChapter[] arrayOfSgTocChapter1 = localSgTocRoot1.getChapter();
        localToc = null;
        if (arrayOfSgTocChapter1 != null)
        {
          SgTocBook localSgTocBook = localSgTocRoot1.getBook();
          localToc = null;
          if (localSgTocBook != null)
          {
            this.g = localSgTocRoot1.getBook().getMd();
            SgTocChapter[] arrayOfSgTocChapter2 = localSgTocRoot1.getChapter();
            i = arrayOfSgTocChapter2.length;
            arrayOfChapterLink = new com.ushaqi.zhuishushenqi.model.ChapterLink[i];
            for (int j = 0; j < i; j++)
            {
              SgTocChapter localSgTocChapter = arrayOfSgTocChapter2[j];
              if (localSgTocChapter == null)
                continue;
              arrayOfChapterLink[j] = new com.ushaqi.zhuishushenqi.model.ChapterLink();
              arrayOfChapterLink[j].setTitle(localSgTocChapter.getName());
              arrayOfChapterLink[j].setLink(localSgTocChapter.getUrl());
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      int i;
      com.ushaqi.zhuishushenqi.model.ChapterLink[] arrayOfChapterLink;
      while (true)
      {
        localException.printStackTrace();
        SgTocRoot localSgTocRoot1 = null;
      }
      localToc = null;
      if (i > 0)
      {
        localToc = a(arrayOfChapterLink);
        String str1 = this.c;
        String str2 = this.f;
        str3 = this.g;
        if (str3 != null)
        {
          localSourceRecord = SourceRecord.get(str1, "sogou");
          if (localSourceRecord != null)
            break label216;
          SourceRecord.create(str1, "sogou", str2, str3);
        }
      }
    }
    label216: 
    do
      return localToc;
    while (str3.equals(localSourceRecord.getSogouMd()));
    localSourceRecord.setSogouMd(str3);
    localSourceRecord.save();
    return localToc;
  }

  private Toc f()
  {
    LdTocRoot localLdTocRoot1;
    try
    {
      LdTocRoot localLdTocRoot2 = b.b().t(this.f);
      localLdTocRoot1 = localLdTocRoot2;
      if ((localLdTocRoot1 == null) || (localLdTocRoot1.getResult() == null))
        return null;
    }
    catch (Exception localException1)
    {
      while (true)
      {
        localException1.printStackTrace();
        localLdTocRoot1 = null;
      }
    }
    while (true)
    {
      int i;
      com.ushaqi.zhuishushenqi.model.ChapterLink[] arrayOfChapterLink;
      try
      {
        String str2 = b.b().u(this.f);
        Matcher localMatcher = Pattern.compile("tk:'([0-9a-f]+)'").matcher(str2);
        if (!localMatcher.find())
          break label209;
        String str4 = localMatcher.group(1);
        str3 = str4;
        str1 = str3;
        if (str1 == null)
          break;
        LdTocResult[] arrayOfLdTocResult = localLdTocRoot1.getResult();
        i = arrayOfLdTocResult.length;
        arrayOfChapterLink = new com.ushaqi.zhuishushenqi.model.ChapterLink[i];
        int j = 0;
        if (j < i)
        {
          LdTocResult localLdTocResult = arrayOfLdTocResult[j];
          if (localLdTocResult == null)
            continue;
          arrayOfChapterLink[j] = new com.ushaqi.zhuishushenqi.model.ChapterLink();
          arrayOfChapterLink[j].setTitle(localLdTocResult.getTitle());
          arrayOfChapterLink[j].setLink(localLdTocResult.getSrc());
          arrayOfChapterLink[j].setLeidianTk(str1);
          j++;
          continue;
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        String str1 = null;
        continue;
      }
      if (i <= 0)
        break;
      return a(arrayOfChapterLink);
      label209: String str3 = null;
    }
  }

  private Toc g()
  {
    Toc localToc;
    try
    {
      EsTocRoot localEsTocRoot2 = b.b().v(this.f);
      localEsTocRoot1 = localEsTocRoot2;
      localToc = null;
      if (localEsTocRoot1 != null)
      {
        EsTocItem[] arrayOfEsTocItem1 = localEsTocRoot1.getItems();
        localToc = null;
        if (arrayOfEsTocItem1 != null)
        {
          EsTocItem[] arrayOfEsTocItem2 = localEsTocRoot1.getItems();
          i = arrayOfEsTocItem2.length;
          arrayOfChapterLink = new com.ushaqi.zhuishushenqi.model.ChapterLink[i];
          for (int j = 0; j < i; j++)
          {
            EsTocItem localEsTocItem = arrayOfEsTocItem2[j];
            if (localEsTocItem == null)
              continue;
            arrayOfChapterLink[j] = new com.ushaqi.zhuishushenqi.model.ChapterLink();
            arrayOfChapterLink[j].setTitle(localEsTocItem.getChapter_name());
            arrayOfChapterLink[j].setLink(localEsTocItem.getCurl());
            arrayOfChapterLink[j].setEasouIndex(localEsTocItem.getSort());
          }
        }
      }
    }
    catch (Exception localException)
    {
      int i;
      com.ushaqi.zhuishushenqi.model.ChapterLink[] arrayOfChapterLink;
      while (true)
      {
        localException.printStackTrace();
        EsTocRoot localEsTocRoot1 = null;
      }
      localToc = null;
      if (i > 0)
        localToc = a(arrayOfChapterLink);
    }
    return localToc;
  }

  public final ChapterRoot a(com.ushaqi.zhuishushenqi.model.ChapterLink paramChapterLink, int paramInt)
  {
    if (this.e == null)
      this.e = I.d;
    if (this.f == null)
      this.f = I.e;
    if (this.g == null)
      this.g = I.f;
    ChapterRoot localChapterRoot;
    switch (this.b)
    {
    case 4:
    case 5:
    default:
      localChapterRoot = c(paramChapterLink.getLink());
    case 6:
    case 7:
    case 8:
    case 3:
    }
    while (true)
    {
      if (((localChapterRoot == null) || ((localChapterRoot != null) && (localChapterRoot.getChapter() != null) && (localChapterRoot.getChapter().getBody() == null))) && (this.b != 6) && (this.b != 7) && (this.b != 8) && (this.b != 3))
        I.h = true;
      try
      {
        BookTopRoot localBookTopRoot = b.b().u();
        if (localBookTopRoot != null)
        {
          BookTopRoot.Favorite localFavorite = localBookTopRoot.getFavorite();
          if (localFavorite != null)
            a.b(MyApplication.a(), localFavorite.getBookID(), localFavorite.getTocID(), localFavorite.getChecksum());
        }
        localChapterRoot = c(paramChapterLink.getLink());
        I.h = false;
        return localChapterRoot;
        String str = paramChapterLink.getLink();
        if (str == null)
          str = null;
        while (true)
        {
          localChapterRoot = b(a.b(str, 0));
          break;
          String[] arrayOfString = str.split("_");
          if (arrayOfString.length <= 0)
            continue;
          str = arrayOfString[0];
        }
        localChapterRoot = b(paramChapterLink.getLink(), this.g);
        continue;
        localChapterRoot = a(paramInt, paramChapterLink.getLeidianTk());
        continue;
        localChapterRoot = a(paramChapterLink.getEasouIndex(), paramChapterLink.getTitle(), paramChapterLink.getLink());
      }
      catch (IOException localIOException)
      {
        I.h = false;
        localIOException.printStackTrace();
      }
    }
    return localChapterRoot;
  }

  public final Toc a()
  {
    switch (this.b)
    {
    case 1:
    case 2:
    case 4:
    default:
      return b();
    case 5:
      return b();
    case 0:
    case 9:
    case 10:
      return c();
    case 6:
      return d();
    case 7:
      return e();
    case 8:
      return f();
    case 3:
    }
    return g();
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.f = paramString1;
    this.g = paramString2;
    I.f = paramString2;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
    I.e = paramString3;
  }

  public final void b(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.f
 * JD-Core Version:    0.6.0
 */