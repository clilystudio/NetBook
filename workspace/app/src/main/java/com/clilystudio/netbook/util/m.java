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

public final class m {
    private Activity a;
    private String b;
    private String c;
    private BookReadRecord d;
    private boolean e;
    private String f;

    public m(Activity activity) {
        this.a = activity;
        BusProvider.getInstance().register(this);
    }

    static /* synthetic */ Activity a(m m2) {
        return m2.a;
    }

    static /* synthetic */ void a(m m2, int n2) {
        m2.a(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(m m2, List list) {
        TocSummary tocSummary;
        Iterator iterator = list.iterator();
        do {
            if (iterator.hasNext()) continue;
            return;
        } while (!"zhuishuvip".equals((tocSummary = (TocSummary) iterator.next()).getSource()));
        if (m2.d != null) {
            m2.d.setHave_cp(1);
            m2.d.setTocId(tocSummary.get_id());
            m2.d.setReadMode(9);
            m2.d.save();
        } else {
            MyApplication.getInstance().setReadMode(9);
        }
        m2.f = tocSummary.get_id();
        boolean bl = true;
        if (bl) {
            m2.a(m2.d.getReadMode());
        }
    }

    static /* synthetic */ boolean a(m m2, boolean bl) {
        m2.e = bl;
        return bl;
    }

    static /* synthetic */ String b(m m2) {
        return m2.b;
    }

    static /* synthetic */ void b(m m2, List<TocSummary> list) {
        for (TocSummary tocSummary : list) {
            if (!"zhuishuvip".equals(tocSummary.getSource())) continue;
            MyApplication.getInstance().setReadMode(9);
            m2.f = tocSummary.get_id();
            m2.a(9);
            break;
        }
    }

    static /* synthetic */ BookReadRecord c(m m2) {
        return m2.d;
    }

    private void a(int n2) {
        MyApplication.getInstance().setReadMode(n2);
        if (n2 == 5) {
            this.a(ReaderActivity.a(this.a, this.b, this.c, "MIX_TOC_ID", (String)null, false));
            return;
        }
        if (n2 == 0 || n2 == 1 || n2 == 4 || n2 == 2) {
            Intent intent = ReaderResActivity.a(this.a, this.b, this.c, n2);
            intent.putExtra("SELECT_LAST", false);
            this.a(intent);
            return;
        }
        if (n2 == 10 && this.d != null) {
            String string = this.d.getTocId();
            this.a(ReaderActivity.a(this.a, this.b, this.c, string, (String)null, false));
            return;
        }
        if (n2 == 9) {
            if (this.d != null) {
                this.f = this.d.getTocId();
            }
            if (am.e() != null) {
                HashMap<String, String> hashMap = com.clilystudio.netbook.hpay100.a.a.M(this.b);
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                }
                this.a(ReaderActivity.a(this.a, this.b, this.c, this.f, hashMap, this.e));
                return;
            }
            this.a(ReaderActivity.a(this.a, this.b, this.c, this.f, this.e));
            return;
        }
        String string = com.clilystudio.netbook.hpay100.a.a.g(n2);
        SourceRecord sourceRecord = SourceRecord.get(this.b, string);
        if (sourceRecord == null || sourceRecord.getSourceId() == null) {
            this.a(true);
            return;
        }
        String string2 = sourceRecord.getSourceId();
        String string3 = com.clilystudio.netbook.hpay100.a.a.a(this.b, n2, string2, null);
        if (com.clilystudio.netbook.hpay100.a.a.a(this.a, string, false)) {
            Intent intent = ReaderActivity.a(this.a, this.b, this.c, string3, string, false);
            intent.putExtra("SOURCE_ID", string2);
            this.a(intent);
            return;
        }
        this.a(ReaderWebActivity.a(this.a, this.b, this.c, string3, string2, n2));
    }

    private void a(Intent intent) {
        intent.putExtra("extra_force_online", false);
        this.a.startActivity(intent);
    }

    private void a(boolean bl) {
        BaseLoadingTask<String, TocSourceRoot> n2 = new BaseLoadingTask<String, TocSourceRoot>(this.a, R.string.loading, bl) {

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
                    int n3 = 5;
                    for (TocSource tocSource : arrtocSource) {
                        com.clilystudio.netbook.hpay100.a.a.a(tocSource, m.b(m.this));
                        if (!tocSource.isPriority()) continue;
                        String string = tocSource.getSource();
                        n3 = "soso".equals(string) ? 6 : ("sogou".equals(string) ? 7 : ("leidian".equals(string) ? 8 : ("easou".equals(string) ? 3 : -1)));
                    }
                    if (m.c(m.this) != null) {
                        m.c(m.this).setReadMode(n3);
                        m.c(m.this).save();
                    } else {
                        MyApplication.getInstance().setReadMode(n3);
                    }
                    m.a(m.this, n3);
                } else {
                    com.clilystudio.netbook.util.e.a(m.a(m.this), "获取资源站失败，请重试");
                }
            }
        };
        String[] arrstring = new String[]{this.b};
        n2.b(arrstring);
    }

    private void a(boolean bl, final boolean bl2) {
        BaseLoadingTask<String, List<TocSummary>> o2 = new BaseLoadingTask<String, List<TocSummary>>(m.this.a, R.string.loading, bl) {
            @Override
            public List<TocSummary> a(String... var1) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().d(var1[0]);
            }

            @Override
            public void a(List<TocSummary> list) {
                if (list == null) {
                    com.clilystudio.netbook.util.e.a(m.a(m.this), "获取资源站失败，请重试");
                    return;
                }
                if (list.size() > 1) {
                    m.a(m.this, true);
                }
                if (bl2) {
                    m.a(m.this, list);
                    return;
                }
                m.b(m.this, list);
            }
        };
        String[] arrstring = new String[]{this.b};
        o2.b(arrstring);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void a(BookReadRecord p1) {
        this.d = p1;
        this.b = p1.getBookId();
        this.c = p1.getTitle();
        int var3_3 = p1.getReadMode();
        if (p1.have_cp == 1) {
            if (p1.getTocId() == null) {
                this.a(true, true);
                return;
            }
            this.a(var3_3);
        } else if (var3_3 == -1) {
            int var5_5 = com.clilystudio.netbook.hpay100.a.a.c(this.a, "PREF_FIRST_LAUNCH_TIME", 0);
            boolean var7_6 = Calendar.getInstance().getTimeInMillis() - var5_5 >= 2592000000L;
            if (!var7_6) {
                Account var8_7 = am.e();
                if (var8_7 == null || var8_7.getUser().getLv() < 5) {
                    com.clilystudio.netbook.util.e.a(this.a, "正在获取来源");
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
        this.b = bookInfo.getId();
        this.c = bookInfo.getTitle();
        if (bookInfo.isHasCp()) {
            this.a(false, false);
            return;
        }
        this.a(false);
    }
}
