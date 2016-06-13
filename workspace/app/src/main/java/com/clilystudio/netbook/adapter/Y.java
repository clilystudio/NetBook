package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;

public final class Y
        extends NotificationAdapter {
    public Y(LayoutInflater layoutInflater) {
        super(layoutInflater);
    }

    @Override
    protected final String a() {
        return am.i((Context) this.b());
    }
}
