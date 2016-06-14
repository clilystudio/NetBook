package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayConsumeRecord;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class Z extends e<String, Void, List<PayConsumeRecord.Order>> {
    private /* synthetic */ PayConsumeActivity a;

    private Z(PayConsumeActivity payConsumeActivity) {
        this.a = payConsumeActivity;
    }

    /* synthetic */ Z(PayConsumeActivity payConsumeActivity, byte by) {
        this(payConsumeActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<PayConsumeRecord.Order> a(String... arrstring) {
        PayConsumeRecord payConsumeRecord = b.b().b(arrstring[0], PayConsumeActivity.c(this.a).size(), 10);
        if (payConsumeRecord == null) return null;
        try {
            if (!payConsumeRecord.isOk()) return null;
            if (payConsumeRecord.getOrders() == null) return null;
            return Arrays.asList(payConsumeRecord.getOrders());
        } catch (IOException var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        PayConsumeActivity.d(this.a).setVisibility(8);
        if (list == null) {
            this.a.h();
            return;
        }
        int n = list.size();
        if (n > 0) {
            this.a.f();
            PayConsumeActivity.c(this.a).addAll(list);
            PayConsumeActivity.e(this.a).a(PayConsumeActivity.c(this.a));
            if (n >= 10) {
                PayConsumeActivity.a(this.a).setOnLastItemListener(PayConsumeActivity.f(this.a));
                return;
            }
            PayConsumeActivity.a(this.a).setOnLastItemListener(null);
            return;
        } else {
            if (PayConsumeActivity.c(this.a).size() != 0) return;
            {
                this.a.g();
                return;
            }
        }
    }
}
