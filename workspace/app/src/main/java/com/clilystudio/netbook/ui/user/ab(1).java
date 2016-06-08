package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;

final class ab
        implements AdapterView.OnItemClickListener {
    ab(PayVoucherFragment paramPayVoucherFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if (paramInt >= 0)
            PayVoucherFragment.a(this.a).size();
    }
}

