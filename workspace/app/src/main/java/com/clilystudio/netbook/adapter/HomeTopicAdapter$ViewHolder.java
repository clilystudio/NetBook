
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.SmartImageView;

class HomeTopicAdapter$ViewHolder {

    HomeTopicAdapter$ViewHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    TextView mCount;
    SmartImageView mCover;
    TextView mTitle;
}
