
package com.clilystudio.netbook.ui;

import android.widget.TabHost;
import android.widget.TabWidget;
import com.clilystudio.netbook.widget.TabWidgetV2;

public abstract class BaseTabActivity extends BaseActivity {

    protected TabHost a;

    protected final void a(int int1, int int2)
    {
        ((TabWidgetV2) a.getTabWidget()).a( int1, int2 );
    }
}
