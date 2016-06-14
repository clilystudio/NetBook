package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.a;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;

final class n
        extends a {
    private /* synthetic */ m a;

    public n(m m2, Activity activity, boolean bl) {
        this.a = m2;
        super(activity, bl);
    }

    @Override
    protected final void a() {
        e.a(m.a(this.a), "\u83b7\u53d6\u8d44\u6e90\u7ad9\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void a(TocSourceRoot tocSourceRoot) {
        if (this.b() == null) {
            return;
        }
        TocSource[] arrtocSource = tocSourceRoot.getSources();
        int n2 = arrtocSource.length;
        int n3 = 5;
        for (int j = 0; j < n2; ++j) {
            TocSource tocSource = arrtocSource[j];
            com.clilystudio.netbook.hpay100.a.a.a(tocSource, m.b(this.a));
            if (!tocSource.isPriority()) continue;
            String string = tocSource.getSource();
            n3 = "soso".equals(string) ? 6 : ("sogou".equals(string) ? 7 : ("leidian".equals(string) ? 8 : ("easou".equals(string) ? 3 : -1)));
        }
        if (m.c(this.a) != null) {
            m.c(this.a).setReadMode(n3);
            m.c(this.a).save();
        } else {
            MyApplication.a().a(n3);
        }
        m.a(this.a, n3);
    }
}
