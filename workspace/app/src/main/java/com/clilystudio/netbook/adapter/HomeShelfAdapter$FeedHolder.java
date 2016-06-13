package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$FeedHolder {
    @InjectView(value = 2131493754)
    BookShelfFlagView flag;
    @InjectView(value = 2131493481)
    TextView title;

    HomeShelfAdapter$FeedHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
