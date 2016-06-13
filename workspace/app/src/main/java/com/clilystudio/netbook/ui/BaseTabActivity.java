package com.clilystudio.netbook.ui;

import android.widget.TabHost;

import com.clilystudio.netbook.widget.TabWidgetV2;

public abstract class BaseTabActivity
        extends BaseActivity {
    protected TabHost a;

    protected final void a(int n, int n2) {
        ((TabWidgetV2) this.a.getTabWidget()).a(n, n2);
    }
}
