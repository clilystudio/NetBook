package com.clilystudio.netbook.adapter;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.util.W;

public final class h extends W<BookReview> {
    private boolean a;
    private boolean b = false;

    public h(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903269);
        Context localContext = paramLayoutInflater.getContext();
        this.a = am.m(localContext);
        this.b = a.r(localContext, "community_user_gender_icon_toggle");
    }

    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, 2131493632, 2131492936, 2131492905, 2131493634, 2131493629, 2131493633};
    }
}

