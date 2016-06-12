package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife;

class BookRankAdapter$ViewHolder {

    SmartImageView cover;
    TextView title;
    BookRankAdapter$ViewHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
