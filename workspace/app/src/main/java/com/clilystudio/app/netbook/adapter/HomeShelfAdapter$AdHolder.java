package com.clilystudio.app.netbook.adapter;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.widget.BookShelfFlagView;

import butterknife.ButterKnife;
import butterknife.InjectView;

class HomeShelfAdapter$AdHolder {

    @InjectView(2131493604)
    SmartImageView cover;

    @InjectView(2131493481)
    TextView desc;

    @InjectView(2131493754)
    BookShelfFlagView flag;

    @InjectView(2131492936)
    TextView title;

    HomeShelfAdapter$AdHolder(View paramView) {
        ButterKnife.inject(this, paramView);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.HomeShelfAdapter.AdHolder
 * JD-Core Version:    0.6.2
 */