package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.BookTopRoot$Favorite;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.MixTocRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.mixtoc.EsTocItem;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocResult;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocBook;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.util.I;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class f {

    private com.clilystudio.netbook.api.b a;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    public f(BookInfo BookInfo1, int int2) {
        a = com.clilystudio.netbook.api.b.a();
        b = int2;
        c = BookInfo1.getId();
    }

    public f(int int1) {
        a = com.clilystudio.netbook.api.b.a();
        b = int1;
    }

    public f(BookReadRecord BookReadRecord1) {
        a = com.clilystudio.netbook.api.b.a();
        b = BookReadRecord1.getReadMode();
        c = BookReadRecord1.getBookId();
    }

    static String a(f f1) {
        return f1.f;
    }

    private ChapterRoot a(int int1, String String2) {
        ChapterRoot ChapterRoot4;

        try {
            ChapterRoot4 = com.clilystudio.netbook.api.b.b().c(f, int1, String2);
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return null;
        }
        return ChapterRoot4;
    }

    private ChapterRoot a(int int1, String String2, String String3) {
        try {
            String[] String_1darray5 = com.clilystudio.netbook.hpay100.a.a.O(f);
        } catch (Exception Exception4) {
            Exception4.printStackTrace();
        }
        return null;
    }

    private Toc a(ChapterLink[] ChapterLink_1darray1) {
        Toc Toc2 = new Toc();

        Toc2.setChapters(ChapterLink_1darray1);
        Toc2.setHost(e);
        Toc2.set_id(d);
        return Toc2;
    }

    private List a(int int1, int int2) {
        Object[][] Object_2darray3 = new ChapterLink[int2][];
        Object Object4 = new ArrayList();
        int int5;
        Iterator Iterator8;
        Object Object9;
        int int10;
        int int11;

        for (int5 = 1; int5 <= int2; ++int5) {
            Object Object6 = new Thread((Runnable) new g(this, int5, int1, (ChapterLink[][]) Object_2darray3));

            ((Thread) Object6).start();
            ((List) Object4).add(Object6);
        }
        Iterator8 = ((List) Object4).iterator();
        while (Iterator8.hasNext()) {
            Thread Thread17 = (Thread) Iterator8.next();

            try {
                Thread17.join();
                continue;
            } catch (InterruptedException InterruptedException18) {
                InterruptedException18.printStackTrace();
                continue;
            }
        }
        Object9 = new ArrayList();
        int10 = Object_2darray3.length;
        int11 = 0;
        label_57:
        while (int11 < int10) {
            Object[] Object_1darray12 = Object_2darray3[int11];

            if (Object_1darray12 != null) {
                int int13 = Object_1darray12.length;
                int int14 = 0;

                while (int14 < int13) {
                    Object Object15 = Object_1darray12[int14];

                    if (Object15 == null) {
                        Object9 = new ArrayList();
                        break label_57;
                    } else {
                        ((ArrayList) Object9).add(Object15);
                        ++int14;
                    }
                }
            }
            ++int11;
        }
        return (List) Object9;
    }

    private ChapterRoot b(int int1) {
        ChapterRoot ChapterRoot3;

        try {
            ChapterRoot3 = com.clilystudio.netbook.api.b.b().c(f, int1);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return ChapterRoot3;
    }

    private ChapterRoot b(String String1, String String2) {
        ChapterRoot ChapterRoot4;

        try {
            ChapterRoot4 = com.clilystudio.netbook.api.b.b().p(String1, String2);
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return null;
        }
        return ChapterRoot4;
    }

    private Toc b() {
        MixTocRoot MixTocRoot2;
        Toc Toc3;

        try {
            MixTocRoot MixTocRoot5 = com.clilystudio.netbook.api.b.b().f(c);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            MixTocRoot2 = null;
        }
        Toc3 = null;
        if (MixTocRoot2 != null) {
            Toc Toc4 = MixTocRoot2.getMixToc();

            Toc3 = null;
            if (Toc4 != null) {
                MixTocRoot2.getMixToc().set_id(d);
                Toc3 = MixTocRoot2.getMixToc();
            }
        }
        return Toc3;
    }

    private ChapterRoot c(String String1) {
        ChapterRoot ChapterRoot4;

        try {
            ApiService ApiService3 = com.clilystudio.netbook.api.b.b();

            if (com.clilystudio.netbook.hpay100.a.a.l())
                return ApiService3.x(String1);
            else
                ChapterRoot4 = ApiService3.y(String1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return ChapterRoot4;
    }

    private Toc c() {
        Toc Toc2;

        try {
            Toc2 = com.clilystudio.netbook.api.b.b().e(d);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return Toc2;
    }

    private Toc d() {
        int int2;

        try {
            int int6 = com.clilystudio.netbook.api.b.b().w(f);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            int2 = 0;
        }
        if (int2 == 0)
            return null;
        else {
            int int3 = 0;
            List List4;
            int int5;

            if (int2 != 0) {
                if (int2 <= 200)
                    int3 = 1;
                else {
                    int3 = int2 / 200;
                    if (int2 % 200 > 0)
                        ++int3;
                }
            }
            List4 = a(int2, int3);
            int5 = List4.size();
            if (int5 > 0)
                return a((ChapterLink[]) List4.toArray(new ChapterLink[int5]));
            else
                return null;
        }
    }

    private Toc e() {
        SgTocRoot SgTocRoot2;
        Toc Toc3;

        try {
            SgTocRoot SgTocRoot16 = com.clilystudio.netbook.api.b.b().s(f);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            SgTocRoot2 = null;
        }
        Toc3 = null;
        if (SgTocRoot2 != null) {
            SgTocChapter[] SgTocChapter_1darray4 = SgTocRoot2.getChapter();

            Toc3 = null;
            if (SgTocChapter_1darray4 != null) {
                SgTocBook SgTocBook5 = SgTocRoot2.getBook();

                Toc3 = null;
                if (SgTocBook5 != null) {
                    SgTocChapter[] SgTocChapter_1darray6;
                    int int7;
                    ChapterLink[] ChapterLink_1darray8;
                    int int9;

                    g = SgTocRoot2.getBook().getMd();
                    SgTocChapter_1darray6 = SgTocRoot2.getChapter();
                    int7 = SgTocChapter_1darray6.length;
                    ChapterLink_1darray8 = new ChapterLink[int7];
                    for (int9 = 0; int9 < int7; ++int9) {
                        SgTocChapter SgTocChapter15 = SgTocChapter_1darray6[int9];

                        if (SgTocChapter15 != null) {
                            ChapterLink_1darray8[int9] = new ChapterLink();
                            ChapterLink_1darray8[int9].setTitle(SgTocChapter15.getName());
                            ChapterLink_1darray8[int9].setLink(SgTocChapter15.getUrl());
                        }
                    }
                    Toc3 = null;
                    if (int7 > 0) {
                        String String10;
                        String String11;
                        String String12;

                        Toc3 = a(ChapterLink_1darray8);
                        String10 = c;
                        String11 = f;
                        String12 = g;
                        if (String12 != null) {
                            SourceRecord SourceRecord13 = SourceRecord.get(String10, "sogou");

                            if (SourceRecord13 == null)
                                SourceRecord.create(String10, "sogou", String11, String12);
                            else if (!String12.equals(SourceRecord13.getSogouMd())) {
                                SourceRecord13.setSogouMd(String12);
                                SourceRecord13.save();
                                return Toc3;
                            }
                        }
                    }
                }
            }
        }
        return Toc3;
    }

    private Toc f() {
        LdTocRoot LdTocRoot2;
        String String4;
        String String12;

        try {
            LdTocRoot LdTocRoot14 = com.clilystudio.netbook.api.b.b().t(f);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            LdTocRoot2 = null;
        }
        label_100:
        {
            if (LdTocRoot2 != null && LdTocRoot2.getResult() != null) {
                try {
                    Object Object10 = com.clilystudio.netbook.api.b.b().u(f);
                    Matcher Matcher11 = Pattern.compile("tk:'([0-9a-f]+)'").matcher((CharSequence) Object10);
                    String String13;

                    if (!Matcher11.find())
                        break label_100;
                    String13 = Matcher11.group(1);
                } catch (Exception Exception3) {
                    Exception3.printStackTrace();
                    String4 = null;
                }
                if (String4 != null) {
                    LdTocResult[] LdTocResult_1darray5 = LdTocRoot2.getResult();
                    int int6 = LdTocResult_1darray5.length;
                    ChapterLink[] ChapterLink_1darray7 = new ChapterLink[int6];
                    int int8;

                    for (int8 = 0; int8 < int6; ++int8) {
                        LdTocResult LdTocResult9 = LdTocResult_1darray5[int8];

                        if (LdTocResult9 != null) {
                            ChapterLink_1darray7[int8] = new ChapterLink();
                            ChapterLink_1darray7[int8].setTitle(LdTocResult9.getTitle());
                            ChapterLink_1darray7[int8].setLink(LdTocResult9.getSrc());
                            ChapterLink_1darray7[int8].setLeidianTk(String4);
                        }
                    }
                    if (int6 > 0)
                        return a(ChapterLink_1darray7);
                }
            }
            return null;
        }
        String12 = null;
        String4 = String12;
    }

    private Toc g() {
        EsTocRoot EsTocRoot2;
        Toc Toc3;

        try {
            EsTocRoot EsTocRoot10 = com.clilystudio.netbook.api.b.b().v(f);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            EsTocRoot2 = null;
        }
        Toc3 = null;
        if (EsTocRoot2 != null) {
            EsTocItem[] EsTocItem_1darray4 = EsTocRoot2.getItems();

            Toc3 = null;
            if (EsTocItem_1darray4 != null) {
                EsTocItem[] EsTocItem_1darray5 = EsTocRoot2.getItems();
                int int6 = EsTocItem_1darray5.length;
                ChapterLink[] ChapterLink_1darray7 = new ChapterLink[int6];
                int int8;

                for (int8 = 0; int8 < int6; ++int8) {
                    EsTocItem EsTocItem9 = EsTocItem_1darray5[int8];

                    if (EsTocItem9 != null) {
                        ChapterLink_1darray7[int8] = new ChapterLink();
                        ChapterLink_1darray7[int8].setTitle(EsTocItem9.getChapter_name());
                        ChapterLink_1darray7[int8].setLink(EsTocItem9.getCurl());
                        ChapterLink_1darray7[int8].setEasouIndex(EsTocItem9.getSort());
                    }
                }
                Toc3 = null;
                if (int6 > 0)
                    Toc3 = a(ChapterLink_1darray7);
            }
        }
        return Toc3;
    }

    public final ChapterRoot a(ChapterLink ChapterLink1, int int2) {
        ChapterRoot ChapterRoot3;

        if (e == null)
            e = I.d;
        if (f == null)
            f = I.e;
        if (g == null)
            g = I.f;
        switch (b) {
            case 4:
            case 5:
            default:
                ChapterRoot3 = c(ChapterLink1.getLink());
                break;
            case 6:
                String String7 = ChapterLink1.getLink();

                if (String7 == null)
                    String7 = null;
                else {
                    String[] String_1darray8 = String7.split("_");

                    if (String_1darray8.length > 0)
                        String7 = String_1darray8[0];
                }
                ChapterRoot3 = b(com.clilystudio.netbook.hpay100.a.a.b(String7, 0));
                break;
            case 7:
                ChapterRoot3 = b(ChapterLink1.getLink(), g);
                break;
            case 8:
                ChapterRoot3 = a(int2, ChapterLink1.getLeidianTk());
                break;
            case 3:
                ChapterRoot3 = a(ChapterLink1.getEasouIndex(), ChapterLink1.getTitle(), ChapterLink1.getLink());
                break;
        }
        if ((ChapterRoot3 == null || ChapterRoot3 != null && ChapterRoot3.getChapter() != null && ChapterRoot3.getChapter().getBody() == null) && b != 6 && b != 7 && b != 8 && b != 3) {
            BookTopRoot BookTopRoot5;

            I.h = true;
            try {
                BookTopRoot5 = com.clilystudio.netbook.api.b.b().u();
            } catch (IOException IOException4) {
                I.h = false;
                IOException4.printStackTrace();
                return ChapterRoot3;
            }
            if (BookTopRoot5 != null) {
                BookTopRoot$Favorite Favorite6;

                try {
                    Favorite6 = BookTopRoot5.getFavorite();
                } catch (IOException IOException9) {
                    I.h = false;
                    IOException9.printStackTrace();
                    return ChapterRoot3;
                }
                if (Favorite6 != null) {
                    try {
                        com.clilystudio.netbook.hpay100.a.a.b((Context) MyApplication.a(), Favorite6.getBookID(), Favorite6.getTocID(), Favorite6.getChecksum());
                        ChapterRoot3 = c(ChapterLink1.getLink());
                        I.h = false;
                    } catch (IOException IOException10) {
                        I.h = false;
                        IOException10.printStackTrace();
                        return ChapterRoot3;
                    }
                    ;
                }
            }
        }
        return ChapterRoot3;
    }

    public final Toc a() {
        switch (b) {
            case 1:
            case 2:
            case 4:
            default:
                return b();
            case 5:
                return b();
            case 9:
            case 10:
            case 0:
                return c();
            case 6:
                return d();
            case 7:
                return e();
            case 8:
                return f();
            case 3:
                return g();
        }
    }

    public final void a(int int1) {
        b = int1;
    }

    public final void a(String String1) {
        c = String1;
    }

    public final void a(String String1, String String2) {
        f = String1;
        g = String2;
        I.f = String2;
    }

    public final void a(String String1, String String2, String String3) {
        d = String1;
        e = String2;
        f = String3;
        I.e = String3;
    }

    public final void b(String String1) {
        d = String1;
    }
}
