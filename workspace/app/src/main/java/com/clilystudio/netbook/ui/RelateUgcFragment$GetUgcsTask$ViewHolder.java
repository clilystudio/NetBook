package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateUgcFragment$GetUgcsTask$ViewHolder {
    @InjectView(value = 2131493317)
    TextView mAuthor;
    @InjectView(value = 2131493577)
    View mContainer;
    @InjectView(value = 2131493239)
    TextView mCount;
    @InjectView(value = 2131493604)
    CoverView mCover;
    @InjectView(value = 2131493481)
    TextView mDesc;
    @InjectView(value = 2131492936)
    TextView mTitle;
    @InjectView(value = 2131493783)
    TextView mUpdated;

    RelateUgcFragment$GetUgcsTask$ViewHolder(RelateUgcFragment.GetUgcsTask getUgcsTask, View view) {
        ButterKnife.inject((Object) this, view);
    }
}
