package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife;

class HomeShelfAdapter$FeedHolder {

    BookShelfFlagView flag;
    TextView title;
    HomeShelfAdapter$FeedHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
