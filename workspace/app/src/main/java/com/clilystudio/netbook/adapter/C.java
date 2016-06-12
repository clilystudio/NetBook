
package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.util.W;

public final class C extends W {

    public C(LayoutInflater LayoutInflater1)
    {
        super( LayoutInflater1, 2130903300 );
    }

    private int a = -1;

    protected final void a(int int1, Object Object2)
    {
        TocDownloadSummary TocDownloadSummary3 = (TocDownloadSummary) Object2;

        a( 0, (CharSequence) TocDownloadSummary3.getHostName() );
        a( 1, (CharSequence) new StringBuilder( "\u5DF2\u9884\u8BFB" ).append( TocDownloadSummary3.getCount() ).append( "\u7AE0" ).toString() );
        if( a == int1 )
            a( 2, false );
        else
            a( 2, true );
    }

    protected final int[] a()
    {
        return new int[] { 2131493741, 2131493738, 2131493740 };
    }
}
