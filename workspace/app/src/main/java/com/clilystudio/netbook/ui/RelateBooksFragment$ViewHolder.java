package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateBooksFragment$ViewHolder {
    @InjectView(value = 2131493971)
    CoverView mBook;
    @InjectView(value = 2131493577)
    View mContainer;
    @InjectView(value = 2131492936)
    TextView mTitle;

    RelateBooksFragment$ViewHolder(RelateBooksFragment relateBooksFragment, View view) {
        ButterKnife.inject((Object) this, view);
    }
}
