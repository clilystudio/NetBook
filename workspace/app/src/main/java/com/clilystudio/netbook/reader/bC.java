
package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.TocSummary;

final class bC implements AdapterView$OnItemClickListener {

    bC(ReaderMixActivity ReaderMixActivity1)
    {
        a = ReaderMixActivity1;
    }

    private ReaderMixActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - ReaderMixActivity.c( a ).getHeaderViewsCount();
        TocSummary TocSummary7 = (TocSummary) ReaderMixActivity.d( a ).getItem( int6 );

        if( !TocSummary7.getHost().equals( ReaderMixActivity.a( a ) ) )
        {
            MyApplication.a().c( ReaderMixActivity.b( a ) );
            if( "vip.zhuishushenqi.com".equals( ReaderMixActivity.a( a ) ) )
                am.c( ReaderMixActivity.b( a ), 9 );
            else
                am.c( ReaderMixActivity.b( a ), 10 );
            i.a().c( new v( 1 ) );
            ReaderMixActivity.a( a, TocSummary7.get_id() );
        }
        a.finish();
    }
}
