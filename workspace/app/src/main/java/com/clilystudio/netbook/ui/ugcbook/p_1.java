
package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils$TruncateAt;
import android.view.View$OnClickListener;
import android.widget.ImageButton;
import android.widget.TextView;

final class p implements Runnable {

    p(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private UGCDetailActivity a;

    public final void run()
    {
        if( UGCDetailActivity.d( a ).getLineCount() > 5 )
        {
            UGCDetailActivity.e( a ).setVisibility( 0 );
            UGCDetailActivity.d( a ).setEllipsize( TextUtils$TruncateAt.END );
            UGCDetailActivity.d( a ).setClickable( true );
            UGCDetailActivity.d( a ).setOnClickListener( UGCDetailActivity.l( a ) );
        }
    }
}
