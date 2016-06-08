package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.widget.AdapterView;

final class U
        implements AdapterView.OnItemClickListener {
    U(UGCGuideSelectBookActivity paramUGCGuideSelectBookActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        this.a.a(paramInt);
    }
}

