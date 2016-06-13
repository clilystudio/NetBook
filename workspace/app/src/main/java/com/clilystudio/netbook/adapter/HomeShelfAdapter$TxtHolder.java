package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$TxtHolder {
    @InjectView(value = 2131492900)
    CheckBox check;
    @InjectView(value = 2131493481)
    TextView desc;
    @InjectView(value = 2131492936)
    TextView title;
    @InjectView(value = 2131492978)
    View top;

    HomeShelfAdapter$TxtHolder(View view) {
        ButterKnife.inject((Object) this, view);
    }
}
