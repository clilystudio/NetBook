package com.clilystudio.netbook.reader;

import android.text.Html;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookTopRoot;
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
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsTocRow;
import com.clilystudio.netbook.util.I;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class f {
    private int b;
    private b a = b.a();
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    public f(int n) {
        this.b = n;
    }

    public f(BookReadRecord bookReadRecord) {
        this.b = bookReadRecord.getReadMode();
        this.c = bookReadRecord.getBookId();
    }

    public f(BookInfo bookInfo, int n) {
        this.b = n;
        this.c = bookInfo.getId();
    }

    static /* synthetic */ String a(f f2) {
        return f2.f;
    }

    private ChapterRoot a(int n, String string) {
        try {
            ChapterRoot chapterRoot = b.b().c(this.f, n, string);
            return chapterRoot;
        } catch (Exception var3_4) {
            var3_4.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ChapterRoot a(int n, String string, String string2) {
        String[] arrstring = a.O(this.f);
        if (arrstring == null) return null;
        try {
            return b.b().a(arrstring[0], arrstring[1], n, string, string2);
        } catch (Exception var4_6) {
            var4_6.printStackTrace();
        }
        return null;
    }

    private Toc a(ChapterLink[] arrchapterLink) {
        Toc toc = new Toc();
        toc.setChapters(arrchapterLink);
        toc.setHost(this.e);
        toc.set_id(this.d);
        return toc;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<ChapterLink> a(final int n, int n2) {
        void var9_12;
        final ChapterLink[][] chapterLinks = new ChapterLink[n2][];
        ArrayList<Thread> arrayList = new ArrayList<Thread>();
        for (int j = 1; j <= n2; ++j) {
//            g(this, j, n, arrchapterLink)
            final int finalJ = j;
            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SsTocRow[] arrssTocRow;
                    SsTocRoot ssTocRoot = com.clilystudio.netbook.api.b.b().a(finalJ, n, f.this.f);
                    if (ssTocRoot == null || ssTocRoot.getRows() == null) return;
                    arrssTocRow = ssTocRoot.getRows();
                    ChapterLink[] arrchapterLink = new ChapterLink[arrssTocRow.length];
                    for (int i = 0; i < arrssTocRow.length; ++i) {
                        SsTocRow ssTocRow = arrssTocRow[i];
                        ChapterLink chapterLink = new ChapterLink();
                        chapterLink.setTitle(String.valueOf(Html.fromHtml(ssTocRow.getSerialname())));
                        chapterLink.setLink(String.valueOf(ssTocRow.getSerialid()));
                        arrchapterLink[i] = chapterLink;
                    }
                    chapterLinks[-1 + finalJ] = arrchapterLink;
                }
            });
            thread.start();
            arrayList.add(thread);
        }
        for (Thread thread : arrayList) {
            try {
                thread.join();
            } catch (InterruptedException var18_9) {
                var18_9.printStackTrace();
            }
        }
        ArrayList<ChapterLink> arrayList2 = new ArrayList<ChapterLink>();
        int n3 = chapterLinks.length;
        int n4 = 0;
        while (n4 < n3) {
            ChapterLink[] arrchapterLink2 = chapterLinks[n4];
            if (arrchapterLink2 != null) {
                for (ChapterLink chapterLink : arrchapterLink2) {
                    if (chapterLink == null) {
                        ArrayList arrayList3 = new ArrayList();
                        return var9_12;
                    }
                    arrayList2.add(chapterLink);
                }
            }
            ++n4;
        }
        return var9_12;
    }

    private ChapterRoot b(int n) {
        try {
            ChapterRoot chapterRoot = b.b().c(this.f, n);
            return chapterRoot;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    private ChapterRoot b(String string, String string2) {
        try {
            ChapterRoot chapterRoot = b.b().p(string, string2);
            return chapterRoot;
        } catch (Exception var3_4) {
            var3_4.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Toc b() {
        try {
            MixTocRoot mixTocRoot;
            MixTocRoot mixTocRoot2 = mixTocRoot = b.b().f(this.c);
            Toc toc = null;
            if (mixTocRoot2 == null) return toc;
            Toc toc2 = mixTocRoot2.getMixToc();
            toc = null;
            if (toc2 == null) return toc;
            mixTocRoot2.getMixToc().set_id(this.d);
            return mixTocRoot2.getMixToc();
        } catch (Exception var1_5) {
            var1_5.printStackTrace();
            return null;
        }
    }

    private ChapterRoot c(String string) {
        try {
            ApiService apiService = b.b();
            if (a.l()) {
                return apiService.x(string);
            }
            ChapterRoot chapterRoot = apiService.y(string);
            return chapterRoot;
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
            return null;
        }
    }

    private Toc c() {
        try {
            Toc toc = b.b().e(this.d);
            return toc;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Toc d() {
        int n;
        List<ChapterLink> list;
        int n2;
        try {
            int n3;
            n2 = n3 = b.b().w(this.f);
            if (n2 == 0) {
                return null;
            }
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
        int n4 = 0;
        if (n2 != 0) {
            if (n2 <= 200) {
                n4 = 1;
            } else {
                n4 = n2 / 200;
                if (n2 % 200 > 0) {
                    ++n4;
                }
            }
        }
        if ((n = (list = this.a(n2, n4)).size()) <= 0) return null;
        return this.a(list.toArray(new ChapterLink[n]));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Toc e() {
        SgTocChapter[] arrsgTocChapter;
        Toc toc;
        try {
            SgTocRoot sgTocRoot;
            SgTocRoot sgTocRoot2 = sgTocRoot = b.b().s(this.f);
            toc = null;
            if (sgTocRoot2 == null) return toc;
            SgTocChapter[] arrsgTocChapter2 = sgTocRoot2.getChapter();
            toc = null;
            if (arrsgTocChapter2 == null) return toc;
            SgTocBook sgTocBook = sgTocRoot2.getBook();
            toc = null;
            if (sgTocBook == null) return toc;
            this.g = sgTocRoot2.getBook().getMd();
            arrsgTocChapter = sgTocRoot2.getChapter();
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
        int n = arrsgTocChapter.length;
        ChapterLink[] arrchapterLink = new ChapterLink[n];
        for (int j = 0; j < n; ++j) {
            SgTocChapter sgTocChapter = arrsgTocChapter[j];
            if (sgTocChapter == null) continue;
            arrchapterLink[j] = new ChapterLink();
            arrchapterLink[j].setTitle(sgTocChapter.getName());
            arrchapterLink[j].setLink(sgTocChapter.getUrl());
        }
        toc = null;
        if (n <= 0) return toc;
        toc = this.a(arrchapterLink);
        String string = this.c;
        String string2 = this.f;
        String string3 = this.g;
        if (string3 == null) return toc;
        SourceRecord sourceRecord = SourceRecord.get(string, "sogou");
        if (sourceRecord == null) {
            SourceRecord.create(string, "sogou", string2, string3);
            return toc;
        }
        if (string3.equals(sourceRecord.getSogouMd())) return toc;
        sourceRecord.setSogouMd(string3);
        sourceRecord.save();
        return toc;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Toc f() {
        LdTocRoot ldTocRoot;
        String string;
        LdTocResult[] arrldTocResult;
        block6:
        {
            try {
                LdTocRoot ldTocRoot2;
                ldTocRoot = ldTocRoot2 = b.b().t(this.f);
                if (ldTocRoot != null && ldTocRoot.getResult() != null) break block6;
                return null;
            } catch (Exception var1_3) {
                var1_3.printStackTrace();
                return null;
            }
        }
        try {
            String string2 = b.b().u(this.f);
            Matcher matcher = Pattern.compile("tk:'([0-9a-f]+)'").matcher(string2);
            if (!matcher.find()) return null;
            String string3 = matcher.group(1);
            String string4 = string3;
            string = string4;
            if (string == null) return null;
            arrldTocResult = ldTocRoot.getResult();
        } catch (Exception var3_9) {
            var3_9.printStackTrace();
            return null;
        }
        int n = arrldTocResult.length;
        ChapterLink[] arrchapterLink = new ChapterLink[n];
        for (int j = 0; j < n; ++j) {
            LdTocResult ldTocResult = arrldTocResult[j];
            if (ldTocResult == null) continue;
            arrchapterLink[j] = new ChapterLink();
            arrchapterLink[j].setTitle(ldTocResult.getTitle());
            arrchapterLink[j].setLink(ldTocResult.getSrc());
            arrchapterLink[j].setLeidianTk(string);
        }
        if (n > 0) return this.a(arrchapterLink);
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Toc g() {
        Toc toc;
        EsTocItem[] arresTocItem;
        try {
            EsTocRoot esTocRoot;
            EsTocRoot esTocRoot2 = esTocRoot = b.b().v(this.f);
            toc = null;
            if (esTocRoot2 == null) return toc;
            EsTocItem[] arresTocItem2 = esTocRoot2.getItems();
            toc = null;
            if (arresTocItem2 == null) return toc;
            arresTocItem = esTocRoot2.getItems();
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
        int n = arresTocItem.length;
        ChapterLink[] arrchapterLink = new ChapterLink[n];
        for (int j = 0; j < n; ++j) {
            EsTocItem esTocItem = arresTocItem[j];
            if (esTocItem == null) continue;
            arrchapterLink[j] = new ChapterLink();
            arrchapterLink[j].setTitle(esTocItem.getChapter_name());
            arrchapterLink[j].setLink(esTocItem.getCurl());
            arrchapterLink[j].setEasouIndex(esTocItem.getSort());
        }
        toc = null;
        if (n <= 0) return toc;
        return this.a(arrchapterLink);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final ChapterRoot a(ChapterLink chapterLink, int n) {
        ChapterRoot chapterRoot;
        if (this.e == null) {
            this.e = I.d;
        }
        if (this.f == null) {
            this.f = I.e;
        }
        if (this.g == null) {
            this.g = I.f;
        }
        switch (this.b) {
            default: {
                chapterRoot = this.c(chapterLink.getLink());
                break;
            }
            case 6: {
                String string = chapterLink.getLink();
                if (string == null) {
                    string = null;
                } else {
                    String[] arrstring = string.split("_");
                    if (arrstring.length > 0) {
                        string = arrstring[0];
                    }
                }
                chapterRoot = this.b(a.b(string, 0));
                break;
            }
            case 7: {
                chapterRoot = this.b(chapterLink.getLink(), this.g);
                break;
            }
            case 8: {
                chapterRoot = this.a(n, chapterLink.getLeidianTk());
                break;
            }
            case 3: {
                chapterRoot = this.a(chapterLink.getEasouIndex(), chapterLink.getTitle(), chapterLink.getLink());
            }
        }
        if (chapterRoot != null) {
            if (chapterRoot == null) return chapterRoot;
            if (chapterRoot.getChapter() == null) return chapterRoot;
            if (chapterRoot.getChapter().getBody() != null) return chapterRoot;
        }
        if (this.b == 6) return chapterRoot;
        if (this.b == 7) return chapterRoot;
        if (this.b == 8) return chapterRoot;
        if (this.b == 3) return chapterRoot;
        I.h = true;
        try {
            BookTopRoot$Favorite bookTopRoot$Favorite;
            BookTopRoot bookTopRoot = b.b().u();
            if (bookTopRoot != null && (bookTopRoot$Favorite = bookTopRoot.getFavorite()) != null) {
                a.b(MyApplication.a(), bookTopRoot$Favorite.getBookID(), bookTopRoot$Favorite.getTocID(), bookTopRoot$Favorite.getChecksum());
            }
            chapterRoot = this.c(chapterLink.getLink());
            I.h = false;
            return chapterRoot;
        } catch (IOException iOException) {
            I.h = false;
            iOException.printStackTrace();
            return chapterRoot;
        }
    }

    public final Toc a() {
        switch (this.b) {
            default: {
                return this.b();
            }
            case 5: {
                return this.b();
            }
            case 0:
            case 9:
            case 10: {
                return this.c();
            }
            case 6: {
                return this.d();
            }
            case 7: {
                return this.e();
            }
            case 8: {
                return this.f();
            }
            case 3:
        }
        return this.g();
    }

    public final void a(int n) {
        this.b = n;
    }

    public final void a(String string) {
        this.c = string;
    }

    public final void a(String string, String string2) {
        this.f = string;
        this.g = string2;
        I.f = string2;
    }

    public final void a(String string, String string2, String string3) {
        this.d = string;
        this.e = string2;
        this.f = string3;
        I.e = string3;
    }

    public final void b(String string) {
        this.d = string;
    }
}
