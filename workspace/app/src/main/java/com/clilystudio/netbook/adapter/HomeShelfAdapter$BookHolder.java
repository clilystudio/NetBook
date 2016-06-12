package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;

class HomeShelfAdapter$BookHolder {

    CheckBox check;
    CoverView cover;
    CoverLoadingLayer coverLoadingLayer;
    TextView desc;
    BookShelfFlagView flag;
    TextView title;
    View top;
    HomeShelfAdapter$BookHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
