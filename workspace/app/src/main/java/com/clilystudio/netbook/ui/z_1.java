
package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class z implements View$OnClickListener {

    z(AudiobookInfoActivity AudiobookInfoActivity1)
    {
        a = AudiobookInfoActivity1;
    }

    private AudiobookInfoActivity a;

    public final void onClick(View View1)
    {
        AudiobookInfoActivity.a( a, 0 );
        AudiobookInfoActivity.a( a );
    }
}
