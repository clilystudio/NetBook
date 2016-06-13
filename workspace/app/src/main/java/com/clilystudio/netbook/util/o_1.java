package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.TocSummary;

import java.util.List;

final class o
        extends c<String, List<TocSummary>> {
    private boolean a;
    private /* synthetic */ m b;

    public o(m m2, Activity activity, boolean bl, boolean bl2) {
        this.b = m2;
        super(activity, 2131034218, bl);
        this.a = bl2;
    }

    private static /* varargs */ List<TocSummary> a(String... arrstring) {
        try {
            b.a();
            List<TocSummary> list = b.b().d(arrstring[0]);
            return list;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        List list = (List) object;
        if (list == null) {
            e.a(m.a(this.b), "\u83b7\u53d6\u8d44\u6e90\u7ad9\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        if (list.size() > 1) {
            m.a(this.b, true);
        }
        if (this.a) {
            m.a(this.b, list);
            return;
        }
        m.b(this.b, list);
    }
}
