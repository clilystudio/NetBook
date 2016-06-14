package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;

final class K implements AdapterView.OnItemClickListener {
    private /* synthetic */ PayChargeActivity a;

    K(PayChargeActivity payChargeActivity) {
        this.a = payChargeActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        if (n >= 0) {
            PayChargeActivity.a(this.a).size();
        }
    }
}
