
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

final class bn implements View$OnClickListener {

    bn(GirlTopicActivity GirlTopicActivity1, TextView TextView2)
    {
        b = GirlTopicActivity1;
        a = TextView2;
    }

    private TextView a;
    private GirlTopicActivity b;

    public final void onClick(View View1)
    {
        GirlTopicActivity.e( b ).findViewById( 2131493085 ).setVisibility( 0 );
        a.setText( (CharSequence) "\u52A0\u8F7D\u4E2D..." );
        GirlTopicActivity.b( b );
    }
}
