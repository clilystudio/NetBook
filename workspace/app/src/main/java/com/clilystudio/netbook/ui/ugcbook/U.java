
package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

final class U implements AdapterView$OnItemClickListener {

    U(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1)
    {
        a = UGCGuideSelectBookActivity1;
    }

    private UGCGuideSelectBookActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        a.a( int3 );
    }
}
