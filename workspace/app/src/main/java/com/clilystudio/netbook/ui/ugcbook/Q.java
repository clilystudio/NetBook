package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

import com.clilystudio.netbook.util.W;

final class Q extends W {

    UGCGuideEditBooksActivity a;     // final access specifier removed

    public Q(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, LayoutInflater LayoutInflater2, int int3) {
        super(LayoutInflater2, 2130903316);
        a = UGCGuideEditBooksActivity1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2) {
    }

    protected final int[] a() {
        return new int[]{2131492899, 2131492936, 2131493317, 2131493775, 2131493776, 2131493777, 2131493780, 2131493778, 2131493779, 2131493411};
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        View View4 = super.getView(int1, View2, ViewGroup3);

        View4.findViewById(2131493781).setOnClickListener((View$OnClickListener) new R(this, int1));
        View4.findViewById(2131493778).setOnClickListener((View$OnClickListener) new S(this, int1));
        View4.findViewById(2131493782).setOnClickListener((View$OnClickListener) new T(this, int1));
        a(int1, View4, getItem(int1));
        return View4;
    }
}
