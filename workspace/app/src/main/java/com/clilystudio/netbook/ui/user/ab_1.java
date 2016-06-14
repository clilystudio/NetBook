package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;

final class ab implements AdapterView.OnItemClickListener {
    private /* synthetic */ PayVoucherFragment a;

    ab(PayVoucherFragment payVoucherFragment) {
        this.a = payVoucherFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        if (n >= 0) {
            PayVoucherFragment.a(this.a).size();
        }
    }
}
