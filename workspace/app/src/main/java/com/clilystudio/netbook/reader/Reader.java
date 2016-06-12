package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.support.design.widget.am;

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

    private static final int[] b = {1, -1, 2, 3, 0};
    public Map a;     // final access specifier removed
    private boolean A;
    private ag B;
    private Y C;
    private String c;
    private String d;
    private String e;
    private String f;
    private ChapterLink[] g;
    private Map h;
    private Map i;
    private int j;
    private int k;
    private BookReadRecord l;
    private TocReadRecord m;
    private MixTocRecord n;
    private Handler o;
    private ExecutorService p;
    private ArrayList q;
    private ae r;
    private ae s;
    private Integer t;
    private Toc u;
    private String v;
    private com.clilystudio.netbook.util.Q w;
    private String x;
    private int y;     // final access specifier removed
    private f z;
    public Reader(String String1, String String2, String String3, int int4) {
        j = -1;
        k = 0;
        a = (Map) new HashMap();
        o = new Handler();
        p = Executors.newCachedThreadPool();
        q = new ArrayList();
        t = Integer.valueOf(0);
        w = com.clilystudio.netbook.util.Q.a();
        A = false;
        C = (Y) new U(this);
        c = String1;
        e = String2;
        d = String3;
        y = int4;
        l = BookReadRecord.get(String1);
        if (this.l != null && e != null) {
            l.getAuthor();
            if (o()) {
                n = MixTocRecord.get(e);
                if (n == null) {
                    n = new MixTocRecord();
                    n.setBookId(c);
                    n.setTocId(e);
                } else {
                    j = n.getChapterIndex();
                    k = n.getCharIndex();
                    return;
                }
            } else {
                m = TocReadRecord.get(e);
                if (m == null) {
                    m = new TocReadRecord();
                    m.setBookId(c);
                    m.setTocId(e);
                } else {
                    j = m.getChapterIndex();
                    k = m.getCharIndex();
                }
                return;
            }
        }
    }

    public Reader(String String1) {
        j = -1;
        k = 0;
        a = (Map) new HashMap();
        o = new Handler();
        p = Executors.newCachedThreadPool();
        q = new ArrayList();
        t = Integer.valueOf(0);
        w = com.clilystudio.netbook.util.Q.a();
        A = false;
        C = (Y) new U(this);
        v = String1;
        A = true;
        y = -1;
    }

    static Toc a(Reader Reader1, Toc Toc2) {
        Reader1.u = Toc2;
        return Toc2;
    }

    static ReaderChapter a(Reader Reader1, ChapterLink ChapterLink2, int int3) {
        return Reader1.a(ChapterLink2, int3);
    }

    static ae a(Reader Reader1) {
        return Reader1.s;
    }

    static ag a(Reader Reader1, ag ag2) {
        Reader1.B = ag2;
        return ag2;
    }

    static f a(Reader Reader1, f f2) {
        Reader1.z = f2;
        return f2;
    }

    static f a(Reader Reader1, String String2, String String3, String String4) {
        f f5;

        if (Reader1.l != null)
            f5 = new f(Reader1.l);
        else {
            BookInfo BookInfo6 = MyApplication.a().c();

            f5 = null;
            if (BookInfo6 != null)
                f5 = new f(BookInfo6, Reader1.y);
        }
        if (f5 != null)
            f5.a(String2, String3, String4);
        return f5;
    }

    static String a(Reader Reader1, String String2) {
        Reader1.x = String2;
        return String2;
    }

    static void a(Reader Reader1, int int2, Reader$Type Type3) {
        Reader1.a(int2, Type3);
    }

    static void a(Reader Reader1, List List2) {
        Reader1.a(List2);
    }

    static void a(Reader Reader1, ChapterLink[] ChapterLink_1darray2) {
        int int3;
        int int4;

        Reader1.g = ChapterLink_1darray2;
        Reader1.i = (Map) new HashMap((int) ((double) ChapterLink_1darray2.length / 0.69999999999999996));
        int3 = ChapterLink_1darray2.length;
        for (int4 = 0; int4 < int3; ++int4) {
            Object Object5 = ChapterLink_1darray2[int4];
            String String6 = ((ChapterLink) Object5).getId();

            if (com.clilystudio.netbook.hpay100.a.a.Q(String6) && Object5 != null && ((ChapterLink) Object5).getLink() != null) {
                String[] String_1darray8 = ((ChapterLink) Object5).getLink().split("/");

                String6 = String_1darray8[-1 + String_1darray8.length];
            }
            Reader1.i.put(String6, Object5);
        }
    }

    static ChapterRoot b(Reader Reader1, ChapterLink ChapterLink2, int int3) {
        if (Reader1.z == null)
            return null;
        Reader1.z.b(I.c);
        Reader1.z.a(I.a);
        Reader1.z.a(I.g);
        return Reader1.z.a(ChapterLink2, int3);
    }

    static ae b(Reader Reader1) {
        return Reader1.r;
    }

    static void b(Reader Reader1, Toc Toc2) {
        com.clilystudio.netbook.hpay100.a.a.a(Reader1.c, Reader1.e, "toc", Toc2);
    }

    static ArrayList c(Reader Reader1) {
        return Reader1.q;
    }

    static Handler d(Reader Reader1) {
        return Reader1.o;
    }

    static ExecutorService e(Reader Reader1) {
        return Reader1.p;
    }

    static boolean f(Reader Reader1) {
        return Reader1.A;
    }

    static String g(Reader Reader1) {
        return Reader1.v;
    }

    static String h(Reader Reader1) {
        return Reader1.e;
    }

    static String i(Reader Reader1) {
        return Reader1.x;
    }

    static String j(Reader Reader1) {
        return Reader1.f;
    }

    static Toc k(Reader Reader1) {
        return (Toc) com.clilystudio.netbook.hpay100.a.a.b(Reader1.c, Reader1.e, "toc");
    }

    static Toc l(Reader Reader1) {
        return Reader1.u;
    }

    static Toc m(Reader Reader1) {
        if (Reader1.z != null)
            return Reader1.z.a();
        else
            return null;
    }

    static ag n(Reader Reader1) {
        return Reader1.B;
    }

    static int o(Reader Reader1) {
        return Reader1.y;
    }

    static Map p(Reader Reader1) {
        return Reader1.i;
    }

    static String q(Reader Reader1) {
        return Reader1.c;
    }

    private ReaderChapter a(ChapterLink ChapterLink1, int int2) {
        return ReaderChapter.create(ChapterLink1, g(), int2);
    }

    private void a(int int1, Reader$Type Type2) {
        if (int1 == 0) {
            if (t.intValue() == 0)
                o.post((Runnable) new Q(this));
            t = Integer.valueOf(1 + t.intValue());
            o.post((Runnable) new R(this, Type2));
        } else {
            t = Integer.valueOf(-1 + t.intValue());
            if (t.intValue() == 0)
                o.post((Runnable) new S(this));
            o.post((Runnable) new T(this, Type2));
        }
    }

    private void a(List List1) {
        if (List1.size() != 0)
            a(((Integer) List1.get(0)).intValue(), (e) new X(this, List1), true, false);
    }

    private boolean o() {
        if (5 == y)
            return true;
        else
            return false;
    }

    private void p() {
        a(1, Reader$Type.CHAPTER);
    }

    public final void a() {
        BookInfo BookInfo1 = MyApplication.a().c();

        if (BookInfo1 != null && BookInfo1.getId() != null && BookInfo1.getId().equals(c)) {
            if (o())
                BookReadRecord.create(BookInfo1, e, j, k, y);
            else
                BookReadRecord.create(BookInfo1, e, x, n(), j, k, y);
        }
    }

    public final void a(int int1) {
        j = int1;
    }

    public final void a(int int1, int int2) {
        int int3 = 0;
        int int4;

        if (j != int1)
            int4 = 1;
        else
            int4 = 0;
        j = int1;
        k = int2;
        if (o()) {
            if (this.l != null) {
                n.setChapterIndex(j);
                n.setCharIndex(k);
                n.save();
            }
        } else if (this.l != null) {
            if (l.getTocId() == null || !l.getTocId().equals(e)) {
                l.setTocId(e);
                l.save();
            }
            m.setChapterIndex(j);
            m.setCharIndex(k);
            m.setChapterTitle(n());
            m.setHost(x);
            m.save();
        }
        if (int4 != 0) {
            Object Object7 = new ArrayList();
            int[] int_1darray8 = b;
            Iterator Iterator9;

            while (int3 < 5) {
                int int10 = int_1darray8[int3] + j;

                if (int10 >= 0 && int10 < g.length)
                    ((List) Object7).add(Integer.valueOf(int10));
                ++int3;
            }
            Iterator9 = a.keySet().iterator();
            while (Iterator9.hasNext()) {
                if (((List) Object7).remove(Iterator9.next()))
                    continue;
                Iterator9.remove();
            }
            a((List) Object7);
        }
    }

    public final void a(int int1, e e2, boolean boolean3, boolean boolean4) {
        Object Object5 = com.clilystudio.netbook.util.Q.a(c, x, int1);
        Object Object6;
        ChapterLink[] ChapterLink_1darray7;

        if (Object5 != null) {
            int int14 = ((ReaderChapter) Object5).getStatus();

            if (int14 != -1 && int14 != -3 && int14 != -2) {
                e2.a(Object5);
                p();
                a.put(Integer.valueOf(int1), Object5);
                return;
            }
        }
        Object6 = (ReaderChapter) a.get(Integer.valueOf(int1));
        if (Object6 != null) {
            int int13 = ((ReaderChapter) Object6).getStatus();

            if (int13 != -1 && int13 != -3 && int13 != -2 || boolean3) {
                e2.a(Object6);
                p();
                return;
            }
        }
        ChapterLink_1darray7 = g;
        if (ChapterLink_1darray7 == null || ChapterLink_1darray7.length == 0) {
            Object Object8 = new ReaderChapter();

            ((ReaderChapter) Object8).setStatus(-4);
            e2.a(Object8);
            p();
        } else {
            ChapterLink ChapterLink9;

            if (int1 < 0)
                int1 = 0;
            else if (int1 >= ChapterLink_1darray7.length)
                int1 = -1 + ChapterLink_1darray7.length;
            ChapterLink9 = ChapterLink_1darray7[int1];
            if (c != null && e != null && ChapterLink9 != null && ChapterLink9.getLink() != null) {
                String String10 = am.e(ChapterLink9.getLink());
                Chapter Chapter11 = (Chapter) com.clilystudio.netbook.hpay100.a.a.b(c, e, String10);

                if (Chapter11 != null) {
                    Object Object12 = a(ChapterLink9, int1);

                    ((ReaderChapter) Object12).setBody(Chapter11.getBody());
                    ((ReaderChapter) Object12).setCpContent(Chapter11.getContent());
                    ((ReaderChapter) Object12).setId(Chapter11.getId());
                    e2.a(Object12);
                    p();
                    return;
                }
            }
            if (!boolean4 && !boolean3) {
                e2.a(a(ChapterLink9, int1));
                p();
            } else
                C.a(int1, e2, boolean3);
        }
    }

    public final void a(ad ad1, boolean boolean2) {
        new Thread((Runnable) new P(this, boolean2, ad1)).start();
    }

    public final void a(ae ae1) {
        r = ae1;
    }

    public final void a(String String1) {
        f = String1;
    }

    public final void a(Map Map1) {
        h = Map1;
    }

    public final ag b() {
        return B;
    }

    public final void b(int int1) {
        k = 0;
    }

    public final void b(ae ae1) {
        s = ae1;
    }

    public final String c(int int1) {
        if (g == null || int1 < 0 || int1 >= g.length)
            return null;
        else
            return g[int1].getTitle();
    }

    public final void c() {
        if (c != null && x != null)
            com.clilystudio.netbook.util.Q.a(c, x, a);
    }

    public final void c(ae ae1) {
        q.add(ae1);
    }

    public final ChapterLink[] d() {
        return g;
    }

    public final Map e() {
        if (h == null)
            h = (Map) new HashMap();
        return h;
    }

    public final int f() {
        if (g != null)
            return g.length;
        else
            return 0;
    }

    public final int g() {
        int int1 = -1 + f();

        if (int1 < 0)
            int1 = 0;
        return int1;
    }

    public final ChapterLink[] h() {
        if (g != null)
            return (ChapterLink[]) g.clone();
        else
            return null;
    }

    public final String i() {
        return x;
    }

    public final String j() {
        if (A) {
            if (x != null) {
                String[] String_1darray1 = x.split(File.separator);

                if (String_1darray1.length > 0)
                    return String_1darray1[-1 + String_1darray1.length];
            }
            return "TXT";
        } else if (x == null)
            return d;
        else
            return new StringBuilder().append(x).append(" - ").append(d).toString();
    }

    public final int k() {
        return j;
    }

    public final int l() {
        return k;
    }

    public final boolean m() {
        if (BookReadRecord.getOnShelf(c) != null)
            return true;
        else
            return false;
    }

    public final String n() {
        ChapterLink ChapterLink1;

        if (g == null || j < 0 || j >= g.length)
            ChapterLink1 = null;
        else
            ChapterLink1 = g[j];
        if (ChapterLink1 != null)
            return ChapterLink1.getTitle();
        else
            return "";
    }
}
