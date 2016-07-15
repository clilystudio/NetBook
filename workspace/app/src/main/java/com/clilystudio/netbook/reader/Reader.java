package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.support.annotation.NonNull;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.reader.txt.TocManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.ReaderChapterIdentifier;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.util.BookInfoUtil;

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
    private final int mReadMode;
    private boolean A = false;
    private BaseAsyncTask<String, Void, Boolean> B;
    private af af2;
    private Y C;
    private String mBookId;
    private String mBookTitle;
    private String mTocId;
    private String mSourceId;
    private ChapterLink[] g;
    private Map<String, String> mChaptersKey;
    private Map<String, ChapterLink> i;
    private int mChapterIndex = -1;
    private int mCharIndex = 0;
    private BookReadRecord mBookReadRecord;
    private TocReadRecord mTocReadRecord;
    private MixTocRecord mMixTocRecord;
    private Handler o = new Handler();
    private ExecutorService p = Executors.newCachedThreadPool();
    private ArrayList<ae> q = new ArrayList<>();
    private ae r;
    private ae s;
    private Integer t = 0;
    private Toc u;
    private String v;
    private String mTocHost;
    private ReaderTocManager z;

    public Reader(String string) {
        this.C = getYClass();
        this.v = string;
        this.A = true;
        this.mReadMode = -1;
    }

    @NonNull
    private Y getYClass() {
        return new Y() {
            private Map<Integer, ArrayList<OnPageTransListener<ReaderChapter>>> map = new HashMap<>();
            private Map<Integer, Integer> map1 = new HashMap<>();

            @Override
            public void a(final int var1, OnPageTransListener<ReaderChapter> var2, boolean var3) {
                synchronized (this) {
                    ArrayList<OnPageTransListener<ReaderChapter>> arrayList = this.map.get(var1);
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
                            final List<OnPageTransListener<ReaderChapter>> list = map.remove(var1);
                            if (list != null) {
                                Reader.d(Reader.this).post(new Runnable() {
                                    @Override
                                    public void run() {
                                        for (OnPageTransListener<ReaderChapter> aList : list) {
                                            aList.onPageTrans(readerChapter);
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
                                if (Reader.this.A) {
                                    ChapterRoot chapterRoot = com.clilystudio.netbook.util.a.a(Reader.this.v, var2_2, nx);
                                    assert chapterRoot != null;
                                    Chapter chapter = chapterRoot.getChapter();
                                    String body = chapter.getBody();
                                    var5_4.setBody(body);
                                } else {
                                    ChapterRoot var6_7 = Reader.getChapterRoot(Reader.this, var3_3, nx);
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
                                                com.clilystudio.netbook.util.a.a(Reader.q(Reader.this), Reader.this.mTocId, CommonUtil.e(var5_4.getLink()), var5_4);
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
    public Reader(String bookId, String tocId, String bookTitle, int readMode) {
        this.C = getYClass();
        this.mBookId = bookId;
        this.mTocId = tocId;
        this.mBookTitle = bookTitle;
        this.mReadMode = readMode;
        this.mBookReadRecord = BookReadRecord.get(bookId);
        if (this.mBookReadRecord == null || this.mTocId == null) return;
        this.mBookReadRecord.getAuthor();
        if (this.o()) {
            this.mMixTocRecord = MixTocRecord.get(this.mTocId);
            if (this.mMixTocRecord == null) {
                this.mMixTocRecord = new MixTocRecord();
                this.mMixTocRecord.setBookId(this.mBookId);
                this.mMixTocRecord.setTocId(this.mTocId);
                return;
            }
            this.mChapterIndex = this.mMixTocRecord.getChapterIndex();
            this.mCharIndex = this.mMixTocRecord.getCharIndex();
            return;
        }
        this.mTocReadRecord = TocReadRecord.get(this.mTocId);
        if (this.mTocReadRecord == null) {
            this.mTocReadRecord = new TocReadRecord();
            this.mTocReadRecord.setBookId(this.mBookId);
            this.mTocReadRecord.setTocId(this.mTocId);
            return;
        }
        this.mChapterIndex = this.mTocReadRecord.getChapterIndex();
        this.mCharIndex = this.mTocReadRecord.getCharIndex();
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

    static /* synthetic */ BaseAsyncTask<String, Void, Boolean> a(Reader reader, BaseAsyncTask<String, Void, Boolean> ag2) {
        reader.B = ag2;
        return ag2;
    }

    static /* synthetic */ ReaderTocManager a(Reader reader, ReaderTocManager f2) {
        reader.z = f2;
        return f2;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ ReaderTocManager a(Reader reader, String tocId, String tocHost, String sourcdId) {
        ReaderTocManager f2;
        if (reader.mBookReadRecord != null) {
            f2 = new ReaderTocManager(reader.mBookReadRecord);
        } else {
            com.clilystudio.netbook.model.BookInfo bookInfo = MyApplication.getInstance().getBookInfo();
            f2 = null;
            if (bookInfo != null) {
                f2 = new ReaderTocManager(bookInfo, reader.mReadMode);
            }
        }
        if (f2 != null) {
            f2.a(tocId, tocHost, sourcdId);
        }
        return f2;
    }

    static /* synthetic */ void a(Reader reader, int n2, Reader.Type type) {
        reader.a(n2, type);
    }

    static /* synthetic */ void a(Reader reader, List<Integer> list) {
        reader.a(list);
    }

    static /* synthetic */ void a(Reader reader, ChapterLink[] arrchapterLink) {
        reader.g = arrchapterLink;
        reader.i = new HashMap<>((int) ((double) arrchapterLink.length / 0.7));
        for (ChapterLink chapterLink : arrchapterLink) {
            String string = chapterLink.getId();
            if (com.clilystudio.netbook.util.a.Q(string) && chapterLink.getLink() != null) {
                String[] arrstring = chapterLink.getLink().split("/");
                string = arrstring[-1 + arrstring.length];
            }
            reader.i.put(string, chapterLink);
        }
    }

    static /* synthetic */ ChapterRoot getChapterRoot(Reader reader, ChapterLink chapterLink, int index) {
        if (reader.z != null) {
            reader.z.setTocId(BookInfoUtil.tocId);
            reader.z.setBookId(BookInfoUtil.bookId);
            reader.z.setReadMode(BookInfoUtil.readMode);
            return reader.z.a(chapterLink, index);
        }
        return null;
    }

    static /* synthetic */ void b(Reader reader, Toc toc) {
        com.clilystudio.netbook.util.a.a(reader.mBookId, reader.mTocId, "toc", toc);
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

    static /* synthetic */ String g(Reader reader) {
        return reader.v;
    }

    static /* synthetic */ Toc k(Reader reader) {
        return (Toc) com.clilystudio.netbook.util.a.b(reader.mBookId, reader.mTocId, "toc");
    }

    static /* synthetic */ Toc l(Reader reader) {
        return reader.u;
    }

    static /* synthetic */ Toc getToc(Reader reader) {
        if (reader.z != null) {
            return reader.z.a();
        }
        return null;
    }

    static /* synthetic */ BaseAsyncTask<String, Void, Boolean> n(Reader reader) {
        return reader.B;
    }

    static /* synthetic */ int o(Reader reader) {
        return reader.mReadMode;
    }

    static /* synthetic */ Map p(Reader reader) {
        return reader.i;
    }

    static /* synthetic */ String q(Reader reader) {
        return reader.mBookId;
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
        this.a(list.get(0), new OnPageTransListener<ReaderChapter>() {
            @Override
            public void onPageTrans(ReaderChapter var1) {
                if (list.size() > 1) {
                    Reader.a(Reader.this, list.subList(1, list.size()));
                }
            }
        }, true, false);
    }

    private boolean o() {
        return 5 == this.mReadMode;
    }

    private void p() {
        this.a(1, Reader.Type.CHAPTER);
    }

    public final void a() {
        com.clilystudio.netbook.model.BookInfo bookInfo = MyApplication.getInstance().getBookInfo();
        if (bookInfo == null || bookInfo.getId() == null || !bookInfo.getId().equals(this.mBookId)) {
            return;
        }
        if (this.o()) {
            BookReadRecord.create(bookInfo, this.mTocId, this.mChapterIndex, this.mCharIndex, this.mReadMode);
            return;
        }
        BookReadRecord.create(bookInfo, this.mTocId, this.mTocHost, this.n(), this.mChapterIndex, this.mCharIndex, this.mReadMode);
    }

    public final void a(int n2) {
        this.mChapterIndex = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n2, int n3) {
        int n4 = 0;
        boolean bl = this.mChapterIndex != n2;
        this.mChapterIndex = n2;
        this.mCharIndex = n3;
        if (this.o()) {
            if (this.mBookReadRecord != null) {
                this.mMixTocRecord.setChapterIndex(this.mChapterIndex);
                this.mMixTocRecord.setCharIndex(this.mCharIndex);
                this.mMixTocRecord.save();
            }
        } else if (this.mBookReadRecord != null) {
            if (this.mBookReadRecord.getTocId() == null || !this.mBookReadRecord.getTocId().equals(this.mTocId)) {
                this.mBookReadRecord.setTocId(this.mTocId);
                this.mBookReadRecord.save();
            }
            this.mTocReadRecord.setChapterIndex(this.mChapterIndex);
            this.mTocReadRecord.setCharIndex(this.mCharIndex);
            this.mTocReadRecord.setChapterTitle(this.n());
            this.mTocReadRecord.setHost(this.mTocHost);
            this.mTocReadRecord.save();
        }
        if (bl) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            int[] arrn = b;
            while (n4 < 5) {
                int n5 = arrn[n4] + this.mChapterIndex;
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
    public final void a(int n2, OnPageTransListener<ReaderChapter> e2, boolean bl, boolean bl2) {
        int n3;
        int n4;
        Chapter chapter;
        ReaderChapter readerChapter = Q.a(this.mBookId, this.mTocHost, n2);
        if (readerChapter != null && (n4 = readerChapter.getStatus()) != -1 && n4 != -3 && n4 != -2) {
            e2.onPageTrans(readerChapter);
            this.p();
            this.a.put(n2, readerChapter);
            return;
        }
        ReaderChapter readerChapter2 = this.a.get(n2);
        if (readerChapter2 != null && ((n3 = readerChapter2.getStatus()) != -1 && n3 != -3 && n3 != -2 || bl)) {
            e2.onPageTrans(readerChapter2);
            this.p();
            return;
        }
        ChapterLink[] arrchapterLink = this.g;
        if (arrchapterLink == null || arrchapterLink.length == 0) {
            ReaderChapter readerChapter3 = new ReaderChapter();
            readerChapter3.setStatus(-4);
            e2.onPageTrans(readerChapter3);
            this.p();
            return;
        }
        if (n2 < 0) {
            n2 = 0;
        } else if (n2 >= arrchapterLink.length) {
            n2 = -1 + arrchapterLink.length;
        }
        ChapterLink chapterLink = arrchapterLink[n2];
        if (this.mBookId != null && this.mTocId != null && chapterLink != null && chapterLink.getLink() != null && (chapter = (Chapter) com.clilystudio.netbook.util.a.b(this.mBookId, this.mTocId, CommonUtil.e(chapterLink.getLink()))) != null) {
            ReaderChapter readerChapter4 = this.a(chapterLink, n2);
            readerChapter4.setBody(chapter.getBody());
            readerChapter4.setCpContent(chapter.getContent());
            readerChapter4.setId(chapter.getId());
            e2.onPageTrans(readerChapter4);
            this.p();
            return;
        }
        if (!bl2 && !bl) {
            e2.onPageTrans(this.a(chapterLink, n2));
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
                if (Reader.this.A) {
                    Reader.a(Reader.this, TocManager.getToc(Reader.this.v));
                    bl = false;
                } else {
                    Reader.a(Reader.this, Reader.a(Reader.this, Reader.this.mTocId, Reader.this.mTocHost, Reader.this.mSourceId));
                    Reader.a(Reader.this, Reader.k(Reader.this));
                    boolean bl2 = Reader.l(Reader.this) == null || bla;
                    if (bl2) {
                        Reader.this.u = Reader.getToc(Reader.this);
                        bl = false;
                    } else {
                        bl = true;
                    }
                }
                if (Reader.l(Reader.this) != null) {
                    this.c();
                    if (!Reader.this.A && !bl) {
                        Reader.b(Reader.this, Reader.l(Reader.this));
                    }
                    if (bl) {
                        Reader.a(Reader.this, new BaseAsyncTask<String, Void, Boolean>() {
                            @Override
                            protected Boolean doInBackground(String... params) {
                                Reader.a(Reader.this, Reader.getToc(Reader.this));
                                if (Reader.l(Reader.this) != null) {
                                    Reader.b(Reader.this, Reader.l(Reader.this));
                                }
                                return Reader.l(Reader.this) != null;
                            }

                            @Override
                            protected void onPostExecute(Boolean aBoolean) {
                                super.onPostExecute(aBoolean);
                                if (aBoolean) {
                                    Reader.this.mTocHost = Reader.l(Reader.this).getHost();
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
                                Reader.a(Reader.this, (BaseAsyncTask<String, Void, Boolean>) null);
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
                Reader.this.mTocHost = Reader.l(Reader.this).getHost();
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

    public final void setSourceId(String sourceId) {
        this.mSourceId = sourceId;
    }

    public final void setChaptersKey(Map<String, String> chaptersKey) {
        this.mChaptersKey = chaptersKey;
    }

    public final BaseAsyncTask<String, Void, Boolean> b() {
        return this.B;
    }

    public final void b(int n2) {
        this.mCharIndex = n2;
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
        if (this.mBookId != null && this.mTocHost != null) {
            Q.a(this.mBookId, this.mTocHost, this.a);
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
        if (this.mChaptersKey == null) {
            this.mChaptersKey = new HashMap<>();
        }
        return this.mChaptersKey;
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
        return this.mTocHost;
    }

    public final String j() {
        if (this.A) {
            String[] arrstring;
            if (this.mTocHost != null && (arrstring = this.mTocHost.split(File.separator)).length > 0) {
                return arrstring[-1 + arrstring.length];
            }
            return "TXT";
        }
        if (this.mTocHost == null) {
            return this.mBookTitle;
        }
        return this.mTocHost + " - " + this.mBookTitle;
    }

    public final int k() {
        return this.mChapterIndex;
    }

    public final int l() {
        return this.mCharIndex;
    }

    public final boolean m() {
        return BookReadRecord.getOnShelf(this.mBookId) != null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final String n() {
        if (this.g == null || this.mChapterIndex < 0 || this.mChapterIndex >= this.g.length) {
            return "";
        }
        ChapterLink chapterLink = this.g[this.mChapterIndex];
        if (chapterLink != null) {
            return chapterLink.getTitle();
        }
        return "";
    }

    public void setaf(af af2) {
        this.af2 = af2;
    }

    public final ae getListener(Reader reader, Type type) {
        if (type == Type.CHAPTER) {
            return reader.s;
        } else {
            return reader.r;
        }
    }

    public enum Type {
        CHAPTER, TOC
    }

    interface Y {
        void a(int var1, OnPageTransListener<ReaderChapter> var2, boolean var3);
    }

    public interface ad {
        void a();

        void b();
    }

    public interface ae {
        void a();

        void b();
    }

    public interface af {
        void a();

        void b();
    }

    public static final class Q {
        private static HashMap<ReaderChapterIdentifier, Map<Integer, ReaderChapter>> a = new HashMap<>();

        private Q() {
        }

        public static ReaderChapter a(String bookId, String tocHost, int n) {
            ReaderChapterIdentifier readerChapterIdentifier = new ReaderChapterIdentifier(bookId, tocHost);
            Map<Integer, ReaderChapter> map = a.get(readerChapterIdentifier);
            if (map == null) {
                return null;
            }
            return map.get(n);
        }

        public static void a(String bookId, String tocHost, Map<Integer, ReaderChapter> map) {
            ReaderChapterIdentifier readerChapterIdentifier = new ReaderChapterIdentifier(bookId, tocHost);
            if (a.get(readerChapterIdentifier) != null) {
                return;
            }
            a.put(readerChapterIdentifier, new HashMap<>(map));
        }
    }

    public interface OnPageTransListener<E> {
        void onPageTrans(E var1);
    }
}
