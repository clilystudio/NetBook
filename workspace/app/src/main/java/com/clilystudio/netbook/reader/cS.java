package com.clilystudio.netbook.reader;

import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;

final class cS
        implements View.OnClickListener {
    cS(SettingWidget paramSettingWidget, dc paramdc) {
    }

    public final void onClick(View paramView) {
        b.a(this.b.getContext(), "auto_read_start");
        a.D(this.b.getContext());
        this.a.a();
    }
}

