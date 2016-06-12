
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.util.I;

final class x implements View$OnClickListener {

    x(o o1)
    {
        a = o1;
    }

    private o a;

    public final void onClick(View View1)
    {
        if( o.a( a ) instanceof ReaderActivity )
        {
            ((ReaderActivity) o.a( a )).i();
            com.clilystudio.netbook.umeng.a.b.a( (Context) o.a( a ), "paying_page_cancel", I.b );
        }
    }
}
