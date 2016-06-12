
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.SmartImageView;

class BookRankAdapter$ViewHolder {

    BookRankAdapter$ViewHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    SmartImageView cover;
    TextView title;
}
