package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.model.PayChargeRecord;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

final class O extends com.clilystudio.netbook.a.e {

    private PayChargeActivity a;

    O(PayChargeActivity PayChargeActivity1, byte byte2) {
        this(PayChargeActivity1);
    }

    private O(PayChargeActivity PayChargeActivity1) {
        a = PayChargeActivity1;
    }

    private transient List a(String[] String_1darray1) {
        try {
            PayChargeRecord PayChargeRecord3 = com.clilystudio.netbook.api.b.b().a(String_1darray1[0], PayChargeActivity.a(a).size(), 10);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (List) Object1;

        super.onPostExecute(Object2);
        PayChargeActivity.b(a).setVisibility(8);
        if (Object2 != null) {
            int int3 = ((List) Object2).size();

            if (int3 > 0) {
                a.f();
                PayChargeActivity.a(a).addAll((Collection) Object2);
                PayChargeActivity.c(a);
                PayChargeActivity.e(a).a = PayChargeActivity.d(a);
                if (int3 < 10) {
                    PayChargeActivity.f(a).setOnLastItemListener(null);
                    PayChargeActivity.f(a).removeFooterView(PayChargeActivity.b(a));
                } else {
                    PayChargeActivity.f(a).setOnLastItemListener(PayChargeActivity.g(a));
                    return;
                }
            } else if (PayChargeActivity.a(a).size() == 0) {
                a.g();
                return;
            }
        } else
            a.h();
    }
}
