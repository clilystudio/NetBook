package com.clilystudio.netbook.ui;

import android.widget.TabHost;

import com.clilystudio.netbook.widget.TabWidgetV2;

public abstract class BaseTabActivity extends BaseActivity {
    protected TabHost a;

    protected final void a(int paramInt1, int paramInt2) {
        ((TabWidgetV2) this.a.getTabWidget()).a(paramInt1, paramInt2);
    }
}
