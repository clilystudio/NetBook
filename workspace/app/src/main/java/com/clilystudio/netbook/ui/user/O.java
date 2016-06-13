package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayChargeRecord;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class O
        extends e<String, Void, List<PayChargeRecord.Order>> {
    private /* synthetic */ PayChargeActivity a;

    private O(PayChargeActivity payChargeActivity) {
        this.a = payChargeActivity;
    }

    /* synthetic */ O(PayChargeActivity payChargeActivity, byte by) {
        this(payChargeActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<PayChargeRecord.Order> a(String... arrstring) {
        PayChargeRecord payChargeRecord = b.b().a(arrstring[0], PayChargeActivity.a(this.a).size(), 10);
        if (payChargeRecord == null) return null;
        try {
            if (!payChargeRecord.isOk()) return null;
            if (payChargeRecord.getOrders() == null) return null;
            return Arrays.asList(payChargeRecord.getOrders());
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
        PayChargeActivity.b(this.a).setVisibility(8);
        if (list == null) {
            this.a.h();
            return;
        }
        int n = list.size();
        if (n > 0) {
            this.a.f();
            PayChargeActivity.a(this.a).addAll(list);
            PayChargeActivity.c(this.a);
            PayChargeActivity.e((PayChargeActivity) this.a).a = PayChargeActivity.d(this.a);
            if (n >= 10) {
                PayChargeActivity.f(this.a).setOnLastItemListener(PayChargeActivity.g(this.a));
                return;
            }
            PayChargeActivity.f(this.a).setOnLastItemListener(null);
            PayChargeActivity.f(this.a).removeFooterView(PayChargeActivity.b(this.a));
            return;
        } else {
            if (PayChargeActivity.a(this.a).size() != 0) return;
            {
                this.a.g();
                return;
            }
        }
    }
}
