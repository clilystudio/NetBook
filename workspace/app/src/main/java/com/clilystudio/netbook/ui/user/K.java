package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;

final class K
        implements AdapterView.OnItemClickListener {
    K(PayChargeActivity paramPayChargeActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if (paramInt >= 0)
            PayChargeActivity.a(this.a).size();
    }
}

