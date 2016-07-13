package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.reader.ReaderActivity;
import com.clilystudio.netbook.reader.ReaderResActivity;
import com.clilystudio.netbook.reader.ReaderWebActivity;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class BookSourceManager {
    private Activity mActivity;
    private String mBookId;
    private String mBookTitle;
    private BookReadRecord mBookReadRecord;
    private boolean mHasOtherSource;
    private String mTocId;

    public BookSourceManager(Activity activity) {
        this.mActivity = activity;
        BusProvider.getInstance().register(this);
    }

    static /* synthetic */ void a(BookSourceManager m2, List list) {
        TocSummary tocSummary;
        Iterator iterator = list.iterator();
        do {
            if (iterator.hasNext()) continue;
            return;
        } while (!"zhuishuvip".equals((tocSummary = (TocSummary) iterator.next()).getSource()));
        if (m2.mBookReadRecord != null) {
            m2.mBookReadRecord.setHave_cp(1);
            m2.mBookReadRecord.setTocId(tocSummary.get_id());
            m2.mBookReadRecord.setReadMode(9);
            m2.mBookReadRecord.save();
        } else {
            MyApplication.getInstance().setReadMode(9);
        }
        m2.mTocId = tocSummary.get_id();
        boolean bl = true;
        if (bl) {
            m2.a(m2.mBookReadRecord.getReadMode());
        }
    }

    static /* synthetic */ void b(BookSourceManager m2, List<TocSummary> list) {
        for (TocSummary tocSummary : list) {
            if (!"zhuishuvip".equals(tocSummary.getSource())) continue;
            MyApplication.getInstance().setReadMode(9);
            m2.mTocId = tocSummary.get_id();
            m2.a(9);
            break;
        }
    }

    private void a(int readMode) {
        MyApplication.getInstance().setReadMode(readMode);
        if (readMode == 5) {
            this.a(ReaderActivity.a(this.mActivity, this.mBookId, this.mBookTitle, "MIX_TOC_ID", (String)null, false));
            return;
        }
        if (readMode == 0 || readMode == 1 || readMode == 4 || readMode == 2) {
            Intent intent = ReaderResActivity.a(this.mActivity, this.mBookId, this.mBookTitle, readMode);
            intent.putExtra("SELECT_LAST", false);
            this.a(intent);
            return;
        }
        if (readMode == 10 && this.mBookReadRecord != null) {
            String string = this.mBookReadRecord.getTocId();
            this.a(ReaderActivity.a(this.mActivity, this.mBookId, this.mBookTitle, string, (String)null, false));
            return;
        }
        if (readMode == 9) {
            if (this.mBookReadRecord != null) {
                this.mTocId = this.mBookReadRecord.getTocId();
            }
            if (am.getAccount() != null) {
                HashMap<String, String> hashMap = com.clilystudio.netbook.hpay100.a.a.M(this.mBookId);
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                }
                this.a(ReaderActivity.a(this.mActivity, this.mBookId, this.mBookTitle, this.mTocId, hashMap, this.mHasOtherSource));
                return;
            }
            this.a(ReaderActivity.a(this.mActivity, this.mBookId, this.mBookTitle, this.mTocId, this.mHasOtherSource));
            return;
        }
        String string = com.clilystudio.netbook.hpay100.a.a.g(readMode);
        SourceRecord sourceRecord = SourceRecord.get(this.mBookId, string);
        if (sourceRecord == null || sourceRecord.getSourceId() == null) {
            this.a(true);
            return;
        }
        String string2 = sourceRecord.getSourceId();
        String string3 = com.clilystudio.netbook.hpay100.a.a.a(this.mBookId, readMode, string2, null);
        if (com.clilystudio.netbook.hpay100.a.a.a(this.mActivity, string, false)) {
            Intent intent = ReaderActivity.a(this.mActivity, this.mBookId, this.mBookTitle, string3, string, false);
            intent.putExtra("SOURCE_ID", string2);
            this.a(intent);
            return;
        }
        this.a(ReaderWebActivity.a(this.mActivity, this.mBookId, this.mBookTitle, string3, string2, readMode));
    }

    private void a(Intent intent) {
        intent.putExtra("extra_force_online", false);
        this.mActivity.startActivity(intent);
    }

    private void a(boolean showProgress) {
        new BaseLoadingTask<String, TocSourceRoot>(this.mActivity, R.string.loading, showProgress) {

            @Override
            public TocSourceRoot a(String... var1) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().g(var1[0]);
            }

            @Override
            public void a(TocSourceRoot tocSourceRoot) {
                if (tocSourceRoot != tocSourceRoot && tocSourceRoot.getSources() != null) {
                    if (this.b() == null) {
                        return;
                    }
                    TocSource[] arrtocSource = tocSourceRoot.getSources();
                    int readMode = 5;
                    for (TocSource tocSource : arrtocSource) {
                        com.clilystudio.netbook.hpay100.a.a.a(tocSource, BookSourceManager.this.mBookId);
                        if (!tocSource.isPriority()) continue;
                        String string = tocSource.getSource();
                        readMode = "soso".equals(string) ? 6 : ("sogou".equals(string) ? 7 : ("leidian".equals(string) ? 8 : ("easou".equals(string) ? 3 : -1)));
                    }
                    if (BookSourceManager.this.mBookReadRecord != null) {
                        BookSourceManager.this.mBookReadRecord.setReadMode(readMode);
                        BookSourceManager.this.mBookReadRecord.save();
                    } else {
                        MyApplication.getInstance().setReadMode(readMode);
                    }
                    BookSourceManager.this.a(readMode);
                } else {
                    com.clilystudio.netbook.util.e.a(BookSourceManager.this.mActivity, "获取资源站失败，请重试");
                }
            }
        }.b(this.mBookId);
    }

    private void a(boolean bl, final boolean bl2) {
        BaseLoadingTask<String, List<TocSummary>> o2 = new BaseLoadingTask<String, List<TocSummary>>(BookSourceManager.this.mActivity, R.string.loading, bl) {
            @Override
            public List<TocSummary> a(String... var1) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().d(var1[0]);
            }

            @Override
            public void a(List<TocSummary> list) {
                if (list == null) {
                    com.clilystudio.netbook.util.e.a(BookSourceManager.this.mActivity, "获取资源站失败，请重试");
                    return;
                }
                if (list.size() > 1) {
                    BookSourceManager.this.mHasOtherSource = true;
                }
                if (bl2) {
                    BookSourceManager.a(BookSourceManager.this, list);
                    return;
                }
                BookSourceManager.b(BookSourceManager.this, list);
            }
        };
        String[] arrstring = new String[]{this.mBookId};
        o2.b(arrstring);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void a(BookReadRecord p1) {
        this.mBookReadRecord = p1;
        this.mBookId = p1.getBookId();
        this.mBookTitle = p1.getTitle();
        int var3_3 = p1.getReadMode();
        if (p1.have_cp == 1) {
            if (p1.getTocId() == null) {
                this.a(true, true);
                return;
            }
            this.a(var3_3);
        } else if (var3_3 == -1) {
            int var5_5 = com.clilystudio.netbook.hpay100.a.a.c(this.mActivity, "PREF_FIRST_LAUNCH_TIME", 0);
            boolean var7_6 = Calendar.getInstance().getTimeInMillis() - var5_5 >= 2592000000L;
            if (!var7_6) {
                Account var8_7 = am.getAccount();
                if (var8_7 == null || var8_7.getUser().getLv() < 5) {
                    com.clilystudio.netbook.util.e.a(this.mActivity, "正在获取来源");
                    this.a(true);
                    return;
                }
            }
            p1.setReadMode(5);
            p1.save();
            this.a(5);
        }
    }

    public final void a(BookInfo bookInfo) {
        this.mBookId = bookInfo.getId();
        this.mBookTitle = bookInfo.getTitle();
        if (bookInfo.isHasCp()) {
            this.a(false, false);
            return;
        }
        this.a(false);
    }
}
