
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

final class h implements View$OnClickListener {

    h(AudioBookPlayActivity AudioBookPlayActivity1)
    {
        a = AudioBookPlayActivity1;
    }

    private AudioBookPlayActivity a;

    public final void onClick(View View1)
    {
        a.startActivity( AudiobookInfoActivity.a( (Context) a, AudioBookPlayActivity.d( a ) ) );
    }
}
