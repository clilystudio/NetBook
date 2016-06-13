package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$AlbumHolder {
    @InjectView(value = 2131492900)
    CheckBox check;
    @InjectView(value = 2131493604)
    CoverView cover;
    @InjectView(value = 2131492906)
    CoverLoadingLayer coverLoadingLayer;
    @InjectView(value = 2131493481)
    TextView desc;
    @InjectView(value = 2131493754)
    BookShelfFlagView flag;
    @InjectView(value = 2131492936)
    TextView title;
    @InjectView(value = 2131492978)
    View top;

    HomeShelfAdapter$AlbumHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
