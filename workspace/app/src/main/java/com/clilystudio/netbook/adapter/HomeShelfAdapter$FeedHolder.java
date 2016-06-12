
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.widget.BookShelfFlagView;

class HomeShelfAdapter$FeedHolder {

    HomeShelfAdapter$FeedHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    BookShelfFlagView flag;
    TextView title;
}
