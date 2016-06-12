package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class D implements AdapterView$OnItemClickListener {

    private MyTopicFragment a;

    D(MyTopicFragment MyTopicFragment1) {
        a = MyTopicFragment1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
    }
}
