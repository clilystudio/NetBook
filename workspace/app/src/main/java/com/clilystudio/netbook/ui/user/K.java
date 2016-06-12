
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import java.util.List;

final class K implements AdapterView$OnItemClickListener {

    K(PayChargeActivity PayChargeActivity1)
    {
        a = PayChargeActivity1;
    }

    private PayChargeActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        if( int3 >= 0 )
            PayChargeActivity.a( a ).size();
    }
}
