package com.clilystudio.app.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.app.netbook.widget.BookShelfFlagView;
import com.clilystudio.app.netbook.widget.CoverLoadingLayer;
import com.clilystudio.app.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$BookHolder {

    @InjectView(2131492900)
    CheckBox check;

    @InjectView(2131493604)
    CoverView cover;

    @InjectView(2131492906)
    CoverLoadingLayer coverLoadingLayer;

    @InjectView(2131493481)
    TextView desc;

    @InjectView(2131493754)
    BookShelfFlagView flag;

    @InjectView(2131492936)
    TextView title;

    @InjectView(2131492978)
    View top;

    HomeShelfAdapter$BookHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeShelfAdapter.BookHolder
 * JD-Core Version:    0.6.2
 */