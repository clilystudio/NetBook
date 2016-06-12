
package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import com.clilystudio.netbook.db.BookReadRecord;

final class B implements AdapterView$OnItemClickListener {

    B(AddReviewActivity AddReviewActivity1)
    {
        a = AddReviewActivity1;
    }

    private AddReviewActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        AddReviewActivity.a( a, ((BookReadRecord) AddReviewActivity.b( a ).getItem( int3 )).getBookId() );
        AddReviewActivity.b( a ).a( int3 );
        AddReviewActivity.b( a ).notifyDataSetChanged();
    }
}
