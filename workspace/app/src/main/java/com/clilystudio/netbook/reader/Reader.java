package com.clilystudio.netbook.reader;

import android.os.Handler;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.util.I;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class Reader {
    private static final int[] b = new int[]{1, -1, 2, 3, 0};
    public final Map<Integer, ReaderChapter> a = new HashMap<Integer, ReaderChapter>();
    private final int y;
    private boolean A = false;
    private ag B;
    private Y C;
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
    private Integer t = 0;
    private Toc u;
    private String v;
    private com.clilystudio.netbook.util.Q w = com.clilystudio.netbook.util.Q.a();
    private String x;
    private f z;

    public Reader(String string) {
        this.C = new U(this);
        this.v = string;
        this.A = true;
        this.y = -1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Reader(String string, String string2, String string3, int n) {
        this.C = new U(this);
        this.c = string;
        this.e = string2;
        this.d = string3;
        this.y = n;
        this.l = BookReadRecord.get(string);
        if (this.l == null || this.e == null) return;
        this.l.getAuthor();
        if (this.o()) {
            this.n = MixTocRecord.get(this.e);
            if (this.n == null) {
                this.n = new MixTocRecord();
                this.n.setBookId(this.c);
                this.n.setTocId(this.e);
                return;
            }
            this.j = this.n.getChapterIndex();
            this.k = this.n.getCharIndex();
            return;
        }
        this.m = TocReadRecord.get(this.e);
        if (this.m == null) {
            this.m = new TocReadRecord();
            this.m.setBookId(this.c);
            this.m.setTocId(this.e);
            return;
        }
        this.j = this.m.getChapterIndex();
        this.k = this.m.getCharIndex();
    }

    static /* synthetic */ Toc a(Reader reader, Toc toc) {
        reader.u = toc;
        return toc;
    }

    static /* synthetic */ ReaderChapter a(Reader reader, ChapterLink chapterLink, int n2) {
        return reader.a(chapterLink, n2);
    }

    static /* synthetic */ ae a(Reader reader) {
        return reader.s;
    }

    static /* synthetic */ ag a(Reader reader, ag ag2) {
        reader.B = ag2;
        return ag2;
    }

    static /* synthetic */ f a(Reader reader, f f2) {
        reader.z = f2;
        return f2;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ f a(Reader reader, String string, String string2, String string3) {
        f f2;
        if (reader.l != null) {
            f2 = new f(reader.l);
        } else {
            BookInfo bookInfo = MyApplication.a().c();
            f2 = null;
            if (bookInfo != null) {
                f2 = new f(bookInfo, reader.y);
            }
        }
        if (f2 != null) {
            f2.a(string, string2, string3);
        }
        return f2;
    }

    static /* synthetic */ String a(Reader reader, String string) {
        reader.x = string;
        return string;
    }

    static /* synthetic */ void a(Reader reader, int n2, Reader.Type reader$Type) {
        reader.a(n2, reader$Type);
    }

    static /* synthetic */ void a(Reader reader, List list) {
        reader.a(list);
    }

    static /* synthetic */ void a(Reader reader, ChapterLink[] arrchapterLink) {
        reader.g = arrchapterLink;
        reader.i = new HashMap<String, ChapterLink>((int) ((double) arrchapterLink.length / 0.7));
        for (ChapterLink chapterLink : arrchapterLink) {
            String string = chapterLink.getId();
            if (a.Q(string) && chapterLink != null && chapterLink.getLink() != null) {
                String[] arrstring = chapterLink.getLink().split("/");
                string = arrstring[-1 + arrstring.length];
            }
            reader.i.put(string, chapterLink);
        }
    }

    static /* synthetic */ ChapterRoot b(Reader reader, ChapterLink chapterLink, int n2) {
        if (reader.z != null) {
            reader.z.b(I.c);
            reader.z.a(I.a);
            reader.z.a(I.g);
            return reader.z.a(chapterLink, n2);
        }
        return null;
    }

    static /* synthetic */ ae b(Reader reader) {
        return reader.r;
    }

    static /* synthetic */ void b(Reader reader, Toc toc) {
        a.a(reader.c, reader.e, "toc", toc);
    }

    static /* synthetic */ ArrayList c(Reader reader) {
        return reader.q;
    }

    static /* synthetic */ Handler d(Reader reader) {
        return reader.o;
    }

    static /* synthetic */ ExecutorService e(Reader reader) {
        return reader.p;
    }

    static /* synthetic */ boolean f(Reader reader) {
        return reader.A;
    }

    static /* synthetic */ String g(Reader reader) {
        return reader.v;
    }

    static /* synthetic */ String h(Reader reader) {
        return reader.e;
    }

    static /* synthetic */ String i(Reader reader) {
        return reader.x;
    }

    static /* synthetic */ String j(Reader reader) {
        return reader.f;
    }

    static /* synthetic */ Toc k(Reader reader) {
        return (Toc) a.b(reader.c, reader.e, "toc");
    }

    static /* synthetic */ Toc l(Reader reader) {
        return reader.u;
    }

    static /* synthetic */ Toc m(Reader reader) {
        if (reader.z != null) {
            return reader.z.a();
        }
        return null;
    }

    static /* synthetic */ ag n(Reader reader) {
        return reader.B;
    }

    static /* synthetic */ int o(Reader reader) {
        return reader.y;
    }

    static /* synthetic */ Map p(Reader reader) {
        return reader.i;
    }

    static /* synthetic */ String q(Reader reader) {
        return reader.c;
    }

    private ReaderChapter a(ChapterLink chapterLink, int n2) {
        return ReaderChapter.create(chapterLink, this.g(), n2);
    }

    private void a(int n2, final Reader.Type type) {
        if (n2 == 0) {
            if (this.t == 0) {
                this.o.post(new Q(this));
            }
            this.t = 1 + this.t;
            this.o.post(new Runnable() {
                @Override
                public void run() {
                    ae ae2 = type.getListener(Reader.this);
                    if (ae2 != null) {
                        ae2.a();
                    }
                }
            });
            return;
        }
        this.t = -1 + this.t;
        if (this.t == 0) {
            this.o.post(new S(this));
        }
        this.o.post(new T(this, type));
    }

    private void a(List<Integer> list) {
        if (list.size() == 0) {
            return;
        }
        this.a(list.get(0), new X(this, list), true, false);
    }

    private boolean o() {
        return 5 == this.y;
    }

    private void p() {
        this.a(1, Reader.Type.CHAPTER);
    }

    public final void a() {
        BookInfo bookInfo = MyApplication.a().c();
        if (bookInfo == null || bookInfo.getId() == null || !bookInfo.getId().equals(this.c)) {
            return;
        }
        if (this.o()) {
            BookReadRecord.create(bookInfo, this.e, this.j, this.k, this.y);
            return;
        }
        BookReadRecord.create(bookInfo, this.e, this.x, this.n(), this.j, this.k, this.y);
    }

    public final void a(int n2) {
        this.j = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n2, int n3) {
        int n4 = 0;
        boolean bl = this.j != n2;
        this.j = n2;
        this.k = n3;
        if (this.o()) {
            if (this.l != null) {
                this.n.setChapterIndex(this.j);
                this.n.setCharIndex(this.k);
                this.n.save();
            }
        } else if (this.l != null) {
            if (this.l.getTocId() == null || !this.l.getTocId().equals(this.e)) {
                this.l.setTocId(this.e);
                this.l.save();
            }
            this.m.setChapterIndex(this.j);
            this.m.setCharIndex(this.k);
            this.m.setChapterTitle(this.n());
            this.m.setHost(this.x);
            this.m.save();
        }
        if (bl) {
            ArrayList<Integer> arrayList = new ArrayList<Integer>();
            int[] arrn = b;
            while (n4 < 5) {
                int n5 = arrn[n4] + this.j;
                if (n5 >= 0 && n5 < this.g.length) {
                    arrayList.add(n5);
                }
                ++n4;
            }
            Iterator<Integer> iterator = this.a.keySet().iterator();
            while (iterator.hasNext()) {
                if (arrayList.remove(iterator.next())) continue;
                iterator.remove();
            }
            this.a(arrayList);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n2, e<ReaderChapter> e2, boolean bl, boolean bl2) {
        int n3;
        int n4;
        String string;
        Chapter chapter;
        ReaderChapter readerChapter = com.clilystudio.netbook.util.Q.a(this.c, this.x, n2);
        if (readerChapter != null && (n4 = readerChapter.getStatus()) != -1 && n4 != -3 && n4 != -2) {
            e2.a(readerChapter);
            this.p();
            this.a.put(n2, readerChapter);
            return;
        }
        ReaderChapter readerChapter2 = this.a.get(n2);
        if (readerChapter2 != null && ((n3 = readerChapter2.getStatus()) != -1 && n3 != -3 && n3 != -2 || bl)) {
            e2.a(readerChapter2);
            this.p();
            return;
        }
        ChapterLink[] arrchapterLink = this.g;
        if (arrchapterLink == null || arrchapterLink.length == 0) {
            ReaderChapter readerChapter3 = new ReaderChapter();
            readerChapter3.setStatus(-4);
            e2.a(readerChapter3);
            this.p();
            return;
        }
        if (n2 < 0) {
            n2 = 0;
        } else if (n2 >= arrchapterLink.length) {
            n2 = -1 + arrchapterLink.length;
        }
        ChapterLink chapterLink = arrchapterLink[n2];
        if (this.c != null && this.e != null && chapterLink != null && chapterLink.getLink() != null && (chapter = (Chapter) a.b(this.c, this.e, string = am.e(chapterLink.getLink()))) != null) {
            ReaderChapter readerChapter4 = this.a(chapterLink, n2);
            readerChapter4.setBody(chapter.getBody());
            readerChapter4.setCpContent(chapter.getContent());
            readerChapter4.setId(chapter.getId());
            e2.a(readerChapter4);
            this.p();
            return;
        }
        if (!bl2 && !bl) {
            e2.a(this.a(chapterLink, n2));
            this.p();
            return;
        }
        this.C.a(n2, e2, bl);
    }

    public final void a(final ad ad2, final boolean bla) {
//        P(this, bl, ad2)
        new Thread(new Runnable() {
            @Override
            public void run() {
                boolean bl;
                Reader.a(Reader.this, 0, Reader.Type.TOC);
                if (Reader.f(Reader.this)) {
                    Reader.a(Reader.this, com.clilystudio.netbook.reader.txt.U.a(Reader.g(Reader.this)));
                    bl = false;
                } else {
                    Reader.a(Reader.this, Reader.a(Reader.this, Reader.h(Reader.this), Reader.i(Reader.this), Reader.j(Reader.this)));
                    Reader.a(Reader.this, Reader.k(Reader.this));
                    boolean bl2 = Reader.l(Reader.this) == null || bla;
                    if (bl2) {
                        Reader.a(Reader.this, Reader.m(Reader.this));
                        bl = false;
                    } else {
                        bl = true;
                    }
                }
                if (Reader.l(Reader.this) != null) {
                    this.c();
                    if (!Reader.f(Reader.this) && !bl) {
                        Reader.b(Reader.this, Reader.l(Reader.this));
                    }
                    if (bl) {
                        Reader.a(Reader.this, new ag(Reader.this));
                        Reader.n(Reader.this).b();
                    }
                } else {
                    Reader.a(Reader.this, Reader.k(Reader.this));
                    if (Reader.l(Reader.this) != null) {
                        this.c();
                    } else {
                        Reader.d(Reader.this).post(new Runnable() {
                            @Override
                            public void run() {
                                ad2.b();
                            }
                        });
                    }
                }
                Reader.a(Reader.this, 1, Reader.Type.TOC);
           }

            private void c() {
                Reader.a(Reader.this, Reader.l(Reader.this).getHost());
                Reader.a(Reader.this, Reader.l(Reader.this).getChapters());
                Reader.d(Reader.this).post(new Runnable() {
                    @Override
                    public void run() {
                        ad2.a();
                    }
                });
            }
        }).start();
    }

    public final void a(ae ae2) {
        this.r = ae2;
    }

    public final void a(String string) {
        this.f = string;
    }

    public final void a(Map<String, String> map) {
        this.h = map;
    }

    public final ag b() {
        return this.B;
    }

    public final void b(int n2) {
        this.k = 0;
    }

    public final void b(ae ae2) {
        this.s = ae2;
    }

    public final String c(int n2) {
        if (this.g == null || n2 < 0 || n2 >= this.g.length) {
            return null;
        }
        return this.g[n2].getTitle();
    }

    public final void c() {
        if (this.c != null && this.x != null) {
            com.clilystudio.netbook.util.Q.a(this.c, this.x, this.a);
        }
    }

    @Deprecated
    public final void c(ae ae2) {
        this.q.add(ae2);
    }

    public final ChapterLink[] d() {
        return this.g;
    }

    public final Map<String, String> e() {
        if (this.h == null) {
            this.h = new HashMap<String, String>();
        }
        return this.h;
    }

    public final int f() {
        if (this.g != null) {
            return this.g.length;
        }
        return 0;
    }

    public final int g() {
        int n2 = -1 + this.f();
        if (n2 < 0) {
            n2 = 0;
        }
        return n2;
    }

    public final ChapterLink[] h() {
        if (this.g != null) {
            return this.g.clone();
        }
        return null;
    }

    public final String i() {
        return this.x;
    }

    public final String j() {
        if (this.A) {
            String[] arrstring;
            if (this.x != null && (arrstring = this.x.split(File.separator)).length > 0) {
                return arrstring[-1 + arrstring.length];
            }
            return "TXT";
        }
        if (this.x == null) {
            return this.d;
        }
        return this.x + " - " + this.d;
    }

    public final int k() {
        return this.j;
    }

    public final int l() {
        return this.k;
    }

    public final boolean m() {
        return BookReadRecord.getOnShelf(this.c) != null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final String n() {
        if (this.g == null || this.j < 0 || this.j >= this.g.length) {
            return "";
        }
        ChapterLink chapterLink = this.g[this.j];
        if (chapterLink != null) {
            return chapterLink.getTitle();
        }
        return "";
    }

    public enum Type {
        CHAPTER,TOC;

        private int code;

        Type(int paramInt) {
            this.code = paramInt;
        }

        public final ae getListener(Reader paramReader) {
            if (this.code == 0)
                return Reader.a(paramReader);
            return Reader.b(paramReader);
        }
    }
}
