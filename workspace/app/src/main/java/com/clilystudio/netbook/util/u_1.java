
package com.clilystudio.netbook.util;

import android.view.View;
import android.view.View$OnClickListener;

final class u implements View$OnClickListener {

    u(DialogUtil$FeedIntroDialog FeedIntroDialog1)
    {
        a = FeedIntroDialog1;
    }

    private DialogUtil$FeedIntroDialog a;

    public final void onClick(View View1)
    {
        a.dismiss();
    }
}
