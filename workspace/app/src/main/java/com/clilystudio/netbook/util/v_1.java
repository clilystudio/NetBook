
package com.clilystudio.netbook.util;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class v implements View$OnClickListener {

    v(DialogUtil$GenderIntroDialog GenderIntroDialog1)
    {
        a = GenderIntroDialog1;
    }

    private DialogUtil$GenderIntroDialog a;

    public final void onClick(View View1)
    {
        a.dismiss();
        i.a().c( new r( 0 ) );
        com.clilystudio.netbook.umeng.a.b.a( View1.getContext(), "book_recommend_gender_click", "cancel" );
    }
}
