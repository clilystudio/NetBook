package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class BookRankAdapter$ViewHolder {
    @InjectView(value = 2131493626)
    SmartImageView cover;
    @InjectView(value = 2131493627)
    TextView title;

    BookRankAdapter$ViewHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
