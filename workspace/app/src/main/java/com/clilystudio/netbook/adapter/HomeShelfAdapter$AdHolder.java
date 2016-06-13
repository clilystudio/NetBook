package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$AdHolder {
    @InjectView(value = 2131493604)
    SmartImageView cover;
    @InjectView(value = 2131493481)
    TextView desc;
    @InjectView(value = 2131493754)
    BookShelfFlagView flag;
    @InjectView(value = 2131492936)
    TextView title;

    HomeShelfAdapter$AdHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
