
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

class HomeShelfAdapter$AdHolder {

    HomeShelfAdapter$AdHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    SmartImageView cover;
    TextView desc;
    BookShelfFlagView flag;
    TextView title;
}
