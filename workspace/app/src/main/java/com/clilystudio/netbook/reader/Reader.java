package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.support.annotation.NonNull;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.am;
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
    public final Map<Integer, ReaderChapter> a = new HashMap<>();
    private final int y;
    private boolean A = false;
    private com.clilystudio.netbook.a_pack.e<String, Void, Boolean> B;
    private af af2;
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
    private ArrayList<ae> q = new ArrayList<>();
    private ae r;
    private ae s;
    private Integer t = 0;
    private Toc u;
    private String v;
    private String x;
    private f z;

    public Reader(String string) {
        this.C = getYClass();
        this.v = string;
        this.A = true;
        this.y = -1;
    }

    @NonNull
    private Y getYClass() {
        return new Y() {
            private Map<Integer, ArrayList<e<ReaderChapter>>> map = new HashMap<>();
            private Map<Integer, Integer> map1 = new HashMap<>();

            @Override
            public void a(final int var1, e<ReaderChapter> var2, boolean var3) {
                synchronized (this) {
                    ArrayList<e<ReaderChapter>> arrayList = this.map.get(var1);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        this.map.put(var1, arrayList);
                    }
                    arrayList.add(var2);
                    if (!var3) {
                        Reader.a(Reader.this, 0, Type.CHAPTER);
                        Integer n2 = this.map1.get(var1);
                        if (n2 == null) {
                            this.map1.put(var1, 1);
                        } else {
                            this.map1.put(var1, 1 + n2);
                        }
                    }
                    Reader.e(Reader.this).execute(new Runnable() {

                        public final void af(final ReaderChapter readerChapter) {
                            final List<e<ReaderChapter>> list = map.remove(var1);
                            if (list != null) {
                                Reader.d(Reader.this).post(new Runnable() {
                                    @Override
                                    public void run() {
                                        for (e<ReaderChapter> aList : list) {
                                            aList.a(readerChapter);
                                        }
                                    }
                                });
                            }
                            int ny;
                            if ((ny = map1.remove(var1)) != 0) {
                                while (ny != 0) {
                                    Reader.a(Reader.this, 1, Type.CHAPTER);
                                    ny--;
                                }
                            }
                        }

                        @Override
                        public void run() {
                            int nx = var1;
                            ChapterLink[] var2_2 = Reader.this.d();
                            if (var2_2.length > 0 && nx >= var2_2.length) {
                                nx = var2_2.length - 1;
                            }
                            ChapterLink var3_3;
                            ReaderChapter var5_4;
                            boolean var4_5;
                            if ((var3_3 = var2_2[var1]) == null) {
                                var5_4 = new ReaderChapter();
                                var4_5 = true;
                            } else {
                                var4_5 = var3_3.getUnreadble();
                                var5_4 = Reader.a(Reader.this, var3_3, nx);
                            }
                            if (var4_5) {
                                if (Reader.o(Reader.this) == 5 || Reader.o(Reader.this) == 10) {
                                    var5_4.setStatus(-2);
                                } else {
                                    var5_4.setStatus(-3);
                                }
                            } else {
                                if (Reader.f(Reader.this)) {
                                    ChapterRoot chapterRoot = com.clilystudio.netbook.hpay100.a.a.a(Reader.this.v, var2_2, nx);
                                    assert chapterRoot != null;
                                    Chapter chapter = chapterRoot.getChapter();
                                    String body = chapter.getBody();
                                    var5_4.setBody(body);
                                } else {
                                    ChapterRoot var6_7 = Reader.b(Reader.this, var3_3, nx);
                                    if (var6_7 == null || var6_7.getChapter() == null) {
                                        var5_4.setStatus(-1);
                                    } else if (var6_7.getChapter().getBody() == null) {
                                        var5_4.setStatus(var6_7.getStatus());
                                    } else {
                                        Chapter var7_8 = var6_7.getChapter();
                                        var5_4.setBody(var7_8.getBody());
                                        var5_4.setCpContent(var7_8.getContent());
                                        var5_4.setId(var7_8.getId());
                                        var5_4.setIsVip(var7_8.isVip());
                                        if (var7_8.getLink() != null) {
                                            var5_4.setLink(var7_8.getLink());
                                        }
                                        ChapterLink var9_9 = (ChapterLink) Reader.p(Reader.this).get(var7_8.getId());
                                        if (var9_9 != null) {
                                            var5_4.setIsVip(var9_9.isVip() || var7_8.isVip());
                                            var5_4.setCurrency(var9_9.getCurrency());
                                            String var10_10 = Reader.this.e().get(var5_4.getId());
                                            if (var10_10 != null) {
                                                var5_4.setKey(var10_10);
                                                com.clilystudio.netbook.hpay100.a.a.a(Reader.q(Reader.this), Reader.h(Reader.this), am.e(var5_4.getLink()), var5_4);
                                            }
                                        }
                                    }
                                }
                            }
                            Reader.this.a.put(nx, var5_4);
                            af(var5_4);
                        }
                    });
                }
            }
        };
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Reader(String string, String string2, String string3, int n) {
        this.C = getYClass();
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

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, Boolean> a(Reader reader, com.clilystudio.netbook.a_pack.e<String, Void, Boolean> ag2) {
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

    static /* synthetic */ void a(Reader reader, List<Integer> list) {
        reader.a(list);
    }

    static /* synthetic */ void a(Reader reader, ChapterLink[] arrchapterLink) {
        reader.g = arrchapterLink;
        reader.i = new HashMap<>((int) ((double) arrchapterLink.length / 0.7));
        for (ChapterLink chapterLink : arrchapterLink) {
            String string = chapterLink.getId();
            if (com.clilystudio.netbook.hpay100.a.a.Q(string) && chapterLink.getLink() != null) {
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
        com.clilystudio.netbook.hpay100.a.a.a(reader.c, reader.e, "toc", toc);
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
        return (Toc) com.clilystudio.netbook.hpay100.a.a.b(reader.c, reader.e, "toc");
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

    static /* synthetic */ com.clilystudio.netbook.a_pack.e<String, Void, Boolean> n(Reader reader) {
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
                this.o.post(new Runnable() {
                    @Override
                    public void run() {
                        for (ae o1 : Reader.this.q) {
                            o1.a();
                        }
                    }
                });
            }
            this.t = 1 + this.t;
            this.o.post(new Runnable() {
                @Override
                public void run() {
                    ae ae2 = getListener(Reader.this, type);
                    if (ae2 != null) {
                        ae2.a();
                    }
                }
            });
            return;
        }
        this.t = -1 + this.t;
        if (this.t == 0) {
            this.o.post(new Runnable() {
                @Override
                public void run() {
                    for (ae aQ : Reader.this.q) {
                        aQ.b();
                    }
                }
            });
        }
        this.o.post(new Runnable() {
            @Override
            public void run() {
                ae ae2 = getListener(Reader.this, type);
                if (ae2 != null) {
                    ae2.b();
                }
            }
        });
    }

    private void a(final List<Integer> list) {
        if (list.size() == 0) {
            return;
        }
        this.a(list.get(0), new e<ReaderChapter>() {
            @Override
            public void a(ReaderChapter var1) {
                if (list.size() > 1) {
                    Reader.a(Reader.this, list.subList(1, list.size()));
                }
            }
        }, true, false);
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
            ArrayList<Integer> arrayList = new ArrayList<>();
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
        if (this.c != null && this.e != null && chapterLink != null && chapterLink.getLink() != null && (chapter = (Chapter) com.clilystudio.netbook.hpay100.a.a.b(this.c, this.e, am.e(chapterLink.getLink()))) != null) {
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
        new Thread(new Runnable() {
            @Override
            public void run() {
                boolean bl;
                Reader.a(Reader.this, 0, Reader.Type.TOC);
                if (Reader.f(Reader.this)) {
                    Reader.a(Reader.this, com.clilystudio.netbook.reader.txt.U.a(Reader.this.v));
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
                        Reader.a(Reader.this, new com.clilystudio.netbook.a_pack.e<String, Void, Boolean>() {
                            @Override
                            protected Boolean doInBackground(String... params) {
                                Reader.a(Reader.this, Reader.m(Reader.this));
                                if (Reader.l(Reader.this) != null) {
                                    Reader.b(Reader.this, Reader.l(Reader.this));
                                }
                                return Reader.l(Reader.this) != null;
                            }

                            @Override
                            protected void onPostExecute(Boolean aBoolean) {
                                super.onPostExecute(aBoolean);
                                if (aBoolean) {
                                    Reader.a(Reader.this, Reader.l(Reader.this).getHost());
                                    Reader.a(Reader.this, Reader.l(Reader.this).getChapters());
                                    for (Integer n2 : Reader.this.a.keySet()) {
                                        Reader.this.a.get(n2).setMaxIndex(Reader.this.g());
                                    }
                                }
                                if (af2 != null) {
                                    if (aBoolean) {
                                        af2.a();
                                    } else {
                                        af2.b();
                                    }
                                }
                                Reader.a(Reader.this, (com.clilystudio.netbook.a_pack.e<String, Void, Boolean>) null);
                            }
                        });
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

    public final com.clilystudio.netbook.a_pack.e<String, Void, Boolean> b() {
        return this.B;
    }

    public final void b(int n2) {
        this.k = n2;
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
            this.h = new HashMap<>();
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

    public void setaf(af af2) {
        this.af2 = af2;
    }

    public final ae getListener(Reader paramReader, Type type) {
        if (type == Type.CHAPTER) {
            return Reader.a(paramReader);
        } else {
            return Reader.b(paramReader);
        }
    }

    public enum Type {
        CHAPTER, TOC
    }
}
