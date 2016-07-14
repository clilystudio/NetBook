package com.clilystudio.netbook.reader;

import android.text.Html;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.ApiServiceProvider;
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
import com.clilystudio.netbook.util.BookInfoUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class f {
    private int mReadMode;
    private String mBookId;
    private String mTocId;
    private String mSource;
    private String mSourceId;
    private String mSougoMd;

    public f(int readMode) {
        this.mReadMode = readMode;
    }

    public f(BookReadRecord bookReadRecord) {
        this.mReadMode = bookReadRecord.getReadMode();
        this.mBookId = bookReadRecord.getBookId();
    }

    public f(BookInfo bookInfo, int readMode) {
        this.mReadMode = readMode;
        this.mBookId = bookInfo.getId();
    }

    private ChapterRoot a(int index, String leidianTK) {
        try {
            return ApiServiceProvider.getApiService().c(this.mSourceId, index, leidianTK);
        } catch (Exception var3_4) {
            var3_4.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ChapterRoot a(int sort, String chapterName, String chapterLink) {
        String[] arrstring = com.clilystudio.netbook.hpay100.a.a.O(this.mSourceId);
        if (arrstring == null) return null;
        try {
            return ApiServiceProvider.getApiService().a(arrstring[0], arrstring[1], sort, chapterName, chapterLink);
        } catch (Exception var4_6) {
            var4_6.printStackTrace();
        }
        return null;
    }

    private Toc a(ChapterLink[] arrchapterLink) {
        Toc toc = new Toc();
        toc.setChapters(arrchapterLink);
        toc.setHost(this.mSource);
        toc.set_id(this.mTocId);
        return toc;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<ChapterLink> a(final int n, int n2) {
        final ChapterLink[][] chapterLinks = new ChapterLink[n2][];
        ArrayList<Thread> arrayList = new ArrayList<>();
        for (int j = 1; j <= n2; ++j) {
            final int finalJ = j;
            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    SsTocRow[] arrssTocRow;
                    SsTocRoot ssTocRoot = ApiServiceProvider.getApiService().a(finalJ, n, f.this.mSourceId);
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
        ArrayList<ChapterLink> arrayList2 = new ArrayList<>();
        int n3 = chapterLinks.length;
        int n4 = 0;
        while (n4 < n3) {
            ChapterLink[] arrchapterLink2 = chapterLinks[n4];
            if (arrchapterLink2 != null) {
                for (ChapterLink chapterLink : arrchapterLink2) {
                    if (chapterLink == null) {
                        return new ArrayList<>();
                    }
                    arrayList2.add(chapterLink);
                }
            }
            ++n4;
        }
        return arrayList2;
    }

    private ChapterRoot b(int n) {
        return ApiServiceProvider.getApiService().c(this.mSourceId, n);
    }

    private ChapterRoot b(String string, String string2) {
        return ApiServiceProvider.getApiService().p(string, string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Toc b() {
        try {
            MixTocRoot mixTocRoot2 = ApiServiceProvider.getApiService().f(this.mBookId);
            Toc toc = null;
            if (mixTocRoot2 == null) return toc;
            Toc toc2 = mixTocRoot2.getMixToc();
            toc = null;
            if (toc2 == null) return toc;
            mixTocRoot2.getMixToc().set_id(this.mTocId);
            return mixTocRoot2.getMixToc();
        } catch (Exception var1_5) {
            var1_5.printStackTrace();
            return null;
        }
    }

    private ChapterRoot c(String string) {
        try {
            ApiService apiService = ApiServiceProvider.getApiService();
            if (com.clilystudio.netbook.hpay100.a.a.l()) {
                return apiService.x(string);
            }
            return apiService.y(string);
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
            return null;
        }
    }

    private Toc c() {
        try {
            return ApiServiceProvider.getApiService().e(this.mTocId);
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
            n2 = ApiServiceProvider.getApiService().w(this.mSourceId);
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
            SgTocRoot sgTocRoot2 = ApiServiceProvider.getApiService().s(this.mSourceId);
            toc = null;
            if (sgTocRoot2 == null) return toc;
            SgTocChapter[] arrsgTocChapter2 = sgTocRoot2.getChapter();
            toc = null;
            if (arrsgTocChapter2 == null) return toc;
            SgTocBook sgTocBook = sgTocRoot2.getBook();
            toc = null;
            if (sgTocBook == null) return toc;
            this.mSougoMd = sgTocRoot2.getBook().getMd();
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
        String string = this.mBookId;
        String string2 = this.mSourceId;
        String string3 = this.mSougoMd;
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
                ldTocRoot = ApiServiceProvider.getApiService().t(this.mSourceId);
                if (ldTocRoot != null && ldTocRoot.getResult() != null) break block6;
                return null;
            } catch (Exception var1_3) {
                var1_3.printStackTrace();
                return null;
            }
        }
        try {
            String string2 = ApiServiceProvider.getApiService().u(this.mSourceId);
            Matcher matcher = Pattern.compile("tk:'([0-9a-f]+)'").matcher(string2);
            if (!matcher.find()) return null;
            string = matcher.group(1);
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
            EsTocRoot esTocRoot2 = ApiServiceProvider.getApiService().v(this.mSourceId);
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
    public final ChapterRoot a(ChapterLink chapterLink, int index) {
        ChapterRoot chapterRoot;
        if (this.mSource == null) {
            this.mSource = BookInfoUtil.source;
        }
        if (this.mSourceId == null) {
            this.mSourceId = BookInfoUtil.sourceId;
        }
        if (this.mSougoMd == null) {
            this.mSougoMd = BookInfoUtil.sougoMd;
        }
        switch (this.mReadMode) {
            default: {
                chapterRoot = this.c(chapterLink.getLink());
                break;
            }
            case 6: {
                String link = chapterLink.getLink();
                if (link == null) {
                    link = null;
                } else {
                    String[] arrstring = link.split("_");
                    if (arrstring.length > 0) {
                        link = arrstring[0];
                    }
                }
                chapterRoot = this.b(com.clilystudio.netbook.hpay100.a.a.b(link, 0));
                break;
            }
            case 7: {
                chapterRoot = this.b(chapterLink.getLink(), this.mSougoMd);
                break;
            }
            case 8: {
                chapterRoot = this.a(index, chapterLink.getLeidianTk());
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
        if (this.mReadMode == 6) return chapterRoot;
        if (this.mReadMode == 7) return chapterRoot;
        if (this.mReadMode == 8) return chapterRoot;
        if (this.mReadMode == 3) return chapterRoot;
        BookInfoUtil.h = true;
        BookTopRoot.Favorite bookTopRoot$Favorite;
        BookTopRoot bookTopRoot = ApiServiceProvider.getApiService().u();
        if (bookTopRoot != null && (bookTopRoot$Favorite = bookTopRoot.getFavorite()) != null) {
            com.clilystudio.netbook.hpay100.a.a.b(MyApplication.getInstance(), bookTopRoot$Favorite.getBookID(), bookTopRoot$Favorite.getTocID(), bookTopRoot$Favorite.getChecksum());
        }
        chapterRoot = this.c(chapterLink.getLink());
        BookInfoUtil.h = false;
        return chapterRoot;
    }

    public final Toc a() {
        switch (this.mReadMode) {
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

    public final void setReadMode(int readMode) {
        this.mReadMode = readMode;
    }

    public final void setBookId(String bookId) {
        this.mBookId = bookId;
    }

    public final void a(String sourceId, String sougoMd) {
        this.mSourceId = sourceId;
        this.mSougoMd = sougoMd;
        BookInfoUtil.sougoMd = sougoMd;
    }

    public final void a(String tocId, String source, String sourceId) {
        this.mTocId = tocId;
        this.mSource = source;
        this.mSourceId = sourceId;
        BookInfoUtil.sourceId = sourceId;
    }

    public final void setTocId(String tocId) {
        this.mTocId = tocId;
    }
}
