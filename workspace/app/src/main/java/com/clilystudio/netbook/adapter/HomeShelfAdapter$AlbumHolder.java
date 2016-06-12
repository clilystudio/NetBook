
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

class HomeShelfAdapter$AlbumHolder {

    HomeShelfAdapter$AlbumHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    CheckBox check;
    CoverView cover;
    CoverLoadingLayer coverLoadingLayer;
    TextView desc;
    BookShelfFlagView flag;
    TextView title;
    View top;
}
