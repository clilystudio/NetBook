
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class aa implements View$OnClickListener {

    aa(BookHelpActivity BookHelpActivity1, TextView TextView2)
    {
        b = BookHelpActivity1;
        a = TextView2;
    }

    private TextView a;
    private BookHelpActivity b;

    public final void onClick(View View1)
    {
        BookHelpActivity.e( b ).findViewById( 2131493085 ).setVisibility( 0 );
        a.setText( (CharSequence) "\u52A0\u8F7D\u4E2D..." );
        BookHelpActivity.b( b );
    }
}
