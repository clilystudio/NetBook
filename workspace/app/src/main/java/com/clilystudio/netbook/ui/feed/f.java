
package com.clilystudio.netbook.ui.feed;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class f extends W {

    public f(FeedListActivity FeedListActivity1, LayoutInflater LayoutInflater2)
    {
        super( LayoutInflater2, 2130903275 );
        a = FeedListActivity1;
    }

    private FeedListActivity a;

    private void a(TextView TextView1)
    {
        TextView1.setEnabled( false );
        TextView1.setText( (CharSequence) "\u5DF2\u79FB\u56DE" );
        TextView1.setBackgroundResource( 2131427542 );
        TextView1.setTextColor( a.getResources().getColor( 2131427412 ) );
    }

    static void a(f f1, TextView TextView2)
    {
        f1.a( TextView2 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2)
    {
    }

    protected final int[] a()
    {
        return new int[] { 2131493652, 2131493653, 2131493654, 2131493651 };
    }
}
