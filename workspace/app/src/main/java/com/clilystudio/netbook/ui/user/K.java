package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class K implements AdapterView$OnItemClickListener {

    private PayChargeActivity a;

    K(PayChargeActivity PayChargeActivity1) {
        a = PayChargeActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        if (int3 >= 0)
            PayChargeActivity.a(a).size();
    }
}
