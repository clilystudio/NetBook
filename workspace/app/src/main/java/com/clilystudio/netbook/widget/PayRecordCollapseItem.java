package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;

public class PayRecordCollapseItem extends LinearLayout {

    LinearLayout mItemContainer;

    public PayRecordCollapseItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public final void a(String[] String_1darray1, int int2) {
        LayoutInflater LayoutInflater3;
        int int4;
        int int5;

        mItemContainer.removeAllViews();
        LayoutInflater3 = LayoutInflater.from(getContext());
        int4 = String_1darray1.length;
        for (int5 = 0; int5 < int4; ++int5) {
            Object Object6 = String_1darray1[int5];
            Object Object7 = (TextView) LayoutInflater3.inflate(2130903348, (ViewGroup) mItemContainer, false);

            ((TextView) Object7).setText((CharSequence) Object6);
            mItemContainer.addView((View) Object7);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
    }
}
