package com.clilystudio.app.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;

import com.clilystudio.app.netbook.model.BookHelpSummary;
import com.clilystudio.app.netbook.util.W;
import com.clilystudio.app.netbook.util.am_CommonUtils;

public final class d extends W<BookHelpSummary> {
    private boolean a;
    private boolean b = false;

    public d(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903295);
        Context localContext = paramLayoutInflater.getContext();
        this.a = am_CommonUtils.m(localContext);
        this.b = a.r(localContext, "community_user_gender_icon_toggle");
    }

    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, R.id.title, 2131493519, 2131493629, 2131493632};
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.d
 * JD-Core Version:    0.6.2
 */