package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class ab implements AdapterView$OnItemClickListener {

    private PayVoucherFragment a;

    ab(PayVoucherFragment PayVoucherFragment1) {
        a = PayVoucherFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        if (int3 >= 0)
            PayVoucherFragment.a(a).size();
    }
}
