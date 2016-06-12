
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class cy implements View$OnClickListener {

    cy(ReviewActivity ReviewActivity1, TextView TextView2)
    {
        b = ReviewActivity1;
        a = TextView2;
    }

    private TextView a;
    private ReviewActivity b;

    public final void onClick(View View1)
    {
        ReviewActivity.d( b ).findViewById( 2131493085 ).setVisibility( 0 );
        a.setText( (CharSequence) "\u52A0\u8F7D\u4E2D..." );
        ReviewActivity.b( b );
    }
}
