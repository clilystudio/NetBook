
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.CircularSmartImageView;

class NotificationAdapter$ViewHolder {

    NotificationAdapter$ViewHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    CircularSmartImageView mAvatar;
    TextView mMainText;
    TextView mSubText;
}
