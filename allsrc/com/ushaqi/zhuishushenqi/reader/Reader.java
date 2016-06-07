package com.ushaqi.zhuishushenqi.reader;

import android.os.Handler;
import android.support.design.widget.am;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.db.MixTocRecord;
import com.ushaqi.zhuishushenqi.db.TocReadRecord;
import com.ushaqi.zhuishushenqi.model.BookInfo;
import com.ushaqi.zhuishushenqi.model.Chapter;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import com.ushaqi.zhuishushenqi.model.Toc;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class Reader
{
  private static final int[] b = { 1, -1, 2, 3, 0 };
  private boolean A = false;
  private ag B;
  private Y C = new U(this);
  public final Map<Integer, ReaderChapter> a = new HashMap();
  private String c;
  private String d;
  private String e;
  private String f;
  private ChapterLink[] g;
  private Map<String, String> h;
  private Map<String, ChapterLink> i;
  private int j = -1;
  private int k = 0;
  private BookReadRecord l;
  private TocReadRecord m;
  private MixTocRecord n;
  private Handler o = new Handler();
  private ExecutorService p = Executors.newCachedThreadPool();
  private ArrayList<ae> q = new ArrayList();
  private ae r;
  private ae s;
  private Integer t = Integer.valueOf(0);
  private Toc u;
  private String v;
  private com.ushaqi.zhuishushenqi.util.Q w = com.ushaqi.zhuishushenqi.util.Q.a();
  private String x;
  private final int y;
  private f z;

  public Reader(String paramString)
  {
    this.v = paramString;
    this.A = true;
    this.y = -1;
  }

  public Reader(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.c = paramString1;
    this.e = paramString2;
    this.d = paramString3;
    this.y = paramInt;
    this.l = BookReadRecord.get(paramString1);
    if ((this.l != null) && (this.e != null))
    {
      this.l.getAuthor();
      if (!o())
        break label219;
      this.n = MixTocRecord.get(this.e);
      if (this.n == null)
      {
        this.n = new MixTocRecord();
        this.n.setBookId(this.c);
        this.n.setTocId(this.e);
      }
    }
    else
    {
      return;
    }
    this.j = this.n.getChapterIndex();
    this.k = this.n.getCharIndex();
    return;
    label219: this.m = TocReadRecord.get(this.e);
    if (this.m == null)
    {
      this.m = new TocReadRecord();
      this.m.setBookId(this.c);
      this.m.setTocId(this.e);
      return;
    }
    this.j = this.m.getChapterIndex();
    this.k = this.m.getCharIndex();
  }

  private ReaderChapter a(ChapterLink paramChapterLink, int paramInt)
  {
    return ReaderChapter.create(paramChapterLink, g(), paramInt);
  }

  private void a(int paramInt, Reader.Type paramType)
  {
    if (paramInt == 0)
    {
      if (this.t.intValue() == 0)
        this.o.post(new Q(this));
      this.t = Integer.valueOf(1 + this.t.intValue());
      this.o.post(new R(this, paramType));
      return;
    }
    this.t = Integer.valueOf(-1 + this.t.intValue());
    if (this.t.intValue() == 0)
      this.o.post(new S(this));
    this.o.post(new T(this, paramType));
  }

  private void a(List<Integer> paramList)
  {
    if (paramList.size() == 0)
      return;
    a(((Integer)paramList.get(0)).intValue(), new X(this, paramList), true, false);
  }

  private boolean o()
  {
    return 5 == this.y;
  }

  private void p()
  {
    a(1, Reader.Type.CHAPTER);
  }

  public final void a()
  {
    BookInfo localBookInfo = MyApplication.a().c();
    if ((localBookInfo == null) || (localBookInfo.getId() == null) || (!localBookInfo.getId().equals(this.c)))
      return;
    if (o())
    {
      BookReadRecord.create(localBookInfo, this.e, this.j, this.k, this.y);
      return;
    }
    BookReadRecord.create(localBookInfo, this.e, this.x, n(), this.j, this.k, this.y);
  }

  public final void a(int paramInt)
  {
    this.j = paramInt;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    int i2;
    if (this.j != paramInt1)
    {
      i2 = 1;
      this.j = paramInt1;
      this.k = paramInt2;
      if (!o())
        break label142;
      if (this.l != null)
      {
        this.n.setChapterIndex(this.j);
        this.n.setCharIndex(this.k);
        this.n.save();
      }
    }
    ArrayList localArrayList;
    while (true)
    {
      if (i2 == 0)
        return;
      localArrayList = new ArrayList();
      int[] arrayOfInt = b;
      while (i1 < 5)
      {
        int i3 = arrayOfInt[i1] + this.j;
        if ((i3 >= 0) && (i3 < this.g.length))
          localArrayList.add(Integer.valueOf(i3));
        i1++;
      }
      i2 = 0;
      break;
      label142: if (this.l == null)
        continue;
      if ((this.l.getTocId() == null) || (!this.l.getTocId().equals(this.e)))
      {
        this.l.setTocId(this.e);
        this.l.save();
      }
      this.m.setChapterIndex(this.j);
      this.m.setCharIndex(this.k);
      this.m.setChapterTitle(n());
      this.m.setHost(this.x);
      this.m.save();
    }
    Iterator localIterator = this.a.keySet().iterator();
    while (localIterator.hasNext())
    {
      if (localArrayList.remove(localIterator.next()))
        continue;
      localIterator.remove();
    }
    a(localArrayList);
  }

  public final void a(int paramInt, e<ReaderChapter> parame, boolean paramBoolean1, boolean paramBoolean2)
  {
    ReaderChapter localReaderChapter1 = com.ushaqi.zhuishushenqi.util.Q.a(this.c, this.x, paramInt);
    if (localReaderChapter1 != null)
    {
      int i2 = localReaderChapter1.getStatus();
      if ((i2 != -1) && (i2 != -3) && (i2 != -2))
      {
        parame.a(localReaderChapter1);
        p();
        this.a.put(Integer.valueOf(paramInt), localReaderChapter1);
        return;
      }
    }
    ReaderChapter localReaderChapter2 = (ReaderChapter)this.a.get(Integer.valueOf(paramInt));
    if (localReaderChapter2 != null)
    {
      int i1 = localReaderChapter2.getStatus();
      if (((i1 != -1) && (i1 != -3) && (i1 != -2)) || (paramBoolean1))
      {
        parame.a(localReaderChapter2);
        p();
        return;
      }
    }
    ChapterLink[] arrayOfChapterLink = this.g;
    if ((arrayOfChapterLink == null) || (arrayOfChapterLink.length == 0))
    {
      ReaderChapter localReaderChapter3 = new ReaderChapter();
      localReaderChapter3.setStatus(-4);
      parame.a(localReaderChapter3);
      p();
      return;
    }
    if (paramInt < 0)
      paramInt = 0;
    ChapterLink localChapterLink;
    while (true)
    {
      localChapterLink = arrayOfChapterLink[paramInt];
      if ((this.c == null) || (this.e == null) || (localChapterLink == null) || (localChapterLink.getLink() == null))
        break;
      String str = am.e(localChapterLink.getLink());
      Chapter localChapter = (Chapter)a.b(this.c, this.e, str);
      if (localChapter == null)
        break;
      ReaderChapter localReaderChapter4 = a(localChapterLink, paramInt);
      localReaderChapter4.setBody(localChapter.getBody());
      localReaderChapter4.setCpContent(localChapter.getContent());
      localReaderChapter4.setId(localChapter.getId());
      parame.a(localReaderChapter4);
      p();
      return;
      if (paramInt < arrayOfChapterLink.length)
        continue;
      paramInt = -1 + arrayOfChapterLink.length;
    }
    if ((!paramBoolean2) && (!paramBoolean1))
    {
      parame.a(a(localChapterLink, paramInt));
      p();
      return;
    }
    this.C.a(paramInt, parame, paramBoolean1);
  }

  public final void a(ad paramad, boolean paramBoolean)
  {
    new Thread(new P(this, paramBoolean, paramad)).start();
  }

  public final void a(ae paramae)
  {
    this.r = paramae;
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }

  public final void a(Map<String, String> paramMap)
  {
    this.h = paramMap;
  }

  public final ag b()
  {
    return this.B;
  }

  public final void b(int paramInt)
  {
    this.k = 0;
  }

  public final void b(ae paramae)
  {
    this.s = paramae;
  }

  public final String c(int paramInt)
  {
    if ((this.g == null) || (paramInt < 0) || (paramInt >= this.g.length))
      return null;
    return this.g[paramInt].getTitle();
  }

  public final void c()
  {
    if ((this.c != null) && (this.x != null))
      com.ushaqi.zhuishushenqi.util.Q.a(this.c, this.x, this.a);
  }

  @Deprecated
  public final void c(ae paramae)
  {
    this.q.add(paramae);
  }

  public final ChapterLink[] d()
  {
    return this.g;
  }

  public final Map<String, String> e()
  {
    if (this.h == null)
      this.h = new HashMap();
    return this.h;
  }

  public final int f()
  {
    if (this.g != null)
      return this.g.length;
    return 0;
  }

  public final int g()
  {
    int i1 = -1 + f();
    if (i1 < 0)
      i1 = 0;
    return i1;
  }

  public final ChapterLink[] h()
  {
    if (this.g != null)
      return (ChapterLink[])this.g.clone();
    return null;
  }

  public final String i()
  {
    return this.x;
  }

  public final String j()
  {
    if (this.A)
    {
      if (this.x != null)
      {
        String[] arrayOfString = this.x.split(File.separator);
        if (arrayOfString.length > 0)
          return arrayOfString[(-1 + arrayOfString.length)];
      }
      return "TXT";
    }
    if (this.x == null)
      return this.d;
    return this.x + " - " + this.d;
  }

  public final int k()
  {
    return this.j;
  }

  public final int l()
  {
    return this.k;
  }

  public final boolean m()
  {
    return BookReadRecord.getOnShelf(this.c) != null;
  }

  public final String n()
  {
    if ((this.g == null) || (this.j < 0) || (this.j >= this.g.length));
    for (ChapterLink localChapterLink = null; localChapterLink != null; localChapterLink = this.g[this.j])
      return localChapterLink.getTitle();
    return "";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.Reader
 * JD-Core Version:    0.6.0
 */