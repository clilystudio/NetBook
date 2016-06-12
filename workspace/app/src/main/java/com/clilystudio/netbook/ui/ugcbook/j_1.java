
package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils$TruncateAt;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageButton;
import android.widget.TextView;

final class j implements View$OnClickListener {

    j(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private UGCDetailActivity a;

    public final void onClick(View View1)
    {
        UGCDetailActivity.d( a ).setMaxLines( 2147483647 );
        UGCDetailActivity.d( a ).setEllipsize( null );
        UGCDetailActivity.e( a ).setVisibility( 8 );
        UGCDetailActivity.d( a ).setClickable( false );
    }
}
