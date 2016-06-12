package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import butterknife.ButterKnife;

class HomeShelfAdapter$TxtHolder {

    CheckBox check;
    TextView desc;
    TextView title;
    View top;
    HomeShelfAdapter$TxtHolder(View View1) {
        ButterKnife.inject(this, View1);
    }
}
