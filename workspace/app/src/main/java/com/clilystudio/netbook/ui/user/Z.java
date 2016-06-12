package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.model.PayConsumeRecord;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

final class Z extends com.clilystudio.netbook.a.e {

    private PayConsumeActivity a;

    Z(PayConsumeActivity PayConsumeActivity1, byte byte2) {
        this(PayConsumeActivity1);
    }

    private Z(PayConsumeActivity PayConsumeActivity1) {
        a = PayConsumeActivity1;
    }

    private transient List a(String[] String_1darray1) {
        try {
            PayConsumeRecord PayConsumeRecord3 = com.clilystudio.netbook.api.b.b().b(String_1darray1[0], PayConsumeActivity.c(a).size(), 10);
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
        PayConsumeActivity.d(a).setVisibility(8);
        if (Object2 != null) {
            int int3 = ((List) Object2).size();

            if (int3 > 0) {
                a.f();
                PayConsumeActivity.c(a).addAll((Collection) Object2);
                PayConsumeActivity.e(a).a(PayConsumeActivity.c(a));
                if (int3 < 10)
                    PayConsumeActivity.a(a).setOnLastItemListener(null);
                else {
                    PayConsumeActivity.a(a).setOnLastItemListener(PayConsumeActivity.f(a));
                    return;
                }
            } else if (PayConsumeActivity.c(a).size() == 0) {
                a.g();
                return;
            }
        } else
            a.h();
    }
}
