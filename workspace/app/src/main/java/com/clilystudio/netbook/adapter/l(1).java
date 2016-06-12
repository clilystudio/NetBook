package com.clilystudio.netbook.adapter;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.W;

public final class l extends W<DiscussSummary> {
    private boolean a;
    private boolean b = false;

    public l(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903295);
        Context localContext = paramLayoutInflater.getContext();
        this.a = am.m(localContext);
        this.b = a.r(localContext, "community_user_gender_icon_toggle");
    }

    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, 2131492936, 2131493519, 2131493727, 2131493629, 2131493632};
    }
}

