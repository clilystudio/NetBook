
package com.clilystudio.netbook.reader;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemLongClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.C;
import com.clilystudio.netbook.model.TocDownloadSummary;

final class i implements AdapterView$OnItemLongClickListener {

    i(LocalChapterListActivity LocalChapterListActivity1)
    {
        a = LocalChapterListActivity1;
    }

    private LocalChapterListActivity a;

    public final boolean onItemLongClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - LocalChapterListActivity.a( a ).getHeaderViewsCount();

        if( int6 >= 0 )
        {
            TocDownloadSummary TocDownloadSummary7 = (TocDownloadSummary) LocalChapterListActivity.b( a ).getItem( int6 );

            if( TocDownloadSummary7 != null )
                LocalChapterListActivity.a( a, TocDownloadSummary7.getTocId() );
        }
        return true;
    }
}
