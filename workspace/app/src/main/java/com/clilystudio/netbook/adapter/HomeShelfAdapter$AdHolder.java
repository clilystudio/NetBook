package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife;

class HomeShelfAdapter$AdHolder {

    SmartImageView cover;
    TextView desc;
    BookShelfFlagView flag;
    TextView title;
    HomeShelfAdapter$AdHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
