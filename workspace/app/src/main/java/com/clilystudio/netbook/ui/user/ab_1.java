
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import java.util.List;

final class ab implements AdapterView$OnItemClickListener {

    ab(PayVoucherFragment PayVoucherFragment1)
    {
        a = PayVoucherFragment1;
    }

    private PayVoucherFragment a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        if( int3 >= 0 )
            PayVoucherFragment.a( a ).size();
    }
}
