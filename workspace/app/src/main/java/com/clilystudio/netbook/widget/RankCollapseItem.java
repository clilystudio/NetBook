package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.k;
import com.clilystudio.netbook.model.BookRankSummary;

import java.util.Iterator;
import java.util.List;

import butterknife.ButterKnife;

public class RankCollapseItem extends LinearLayout implements View$OnClickListener {

    ImageView mArrow;
    View mBottomDivdier;
    LinearLayout mItemContainer;
    TextView mLabel;
    RelativeLayout mLabelContainer;
    View mTopDivdier;
    private boolean a;
    private int b;
    public RankCollapseItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    private void a() {
        ImageView ImageView1 = mArrow;
        int int2;
        LinearLayout LinearLayout3;
        int int4;
        View View5;
        int int6;
        View View7;
        boolean boolean8;
        int int9;
        TextView TextView10;
        int int11;

        if (a)
            int2 = 2130838065;
        else
            int2 = 2130838064;
        ImageView1.setImageResource(int2);
        LinearLayout3 = mItemContainer;
        if (a)
            int4 = 0;
        else
            int4 = 8;
        LinearLayout3.setVisibility(int4);
        View5 = mBottomDivdier;
        if (a)
            int6 = 0;
        else
            int6 = 8;
        View5.setVisibility(int6);
        View7 = mTopDivdier;
        boolean8 = a;
        int9 = 0;
        if (!boolean8)
            int9 = 8;
        View7.setVisibility(int9);
        TextView10 = mLabel;
        if (a)
            int11 = -43230;
        else
            int11 = am.a(getContext(), 16842904);
        TextView10.setTextColor(int11);
    }

    public final void a(List List1, int int2, boolean boolean3) {
        LayoutInflater LayoutInflater4;
        Iterator Iterator5;

        b = int2;
        mItemContainer.removeAllViews();
        LayoutInflater4 = LayoutInflater.from(getContext());
        Iterator5 = List1.iterator();
        while (Iterator5.hasNext()) {
            BookRankSummary BookRankSummary6 = (BookRankSummary) Iterator5.next();
            Object Object7 = (TextView) LayoutInflater4.inflate(2130903248, (ViewGroup) mItemContainer, false);

            ((TextView) Object7).setText((CharSequence) BookRankSummary6.getTitle());
            mItemContainer.addView((View) Object7);
            ((TextView) Object7).setOnClickListener((View$OnClickListener) new at(this, BookRankSummary6, boolean3));
        }
    }

    public void onClick(View View1) {
        boolean boolean2;

        if (!a)
            boolean2 = true;
        else
            boolean2 = false;
        a = boolean2;
        a();
        if (a)
            i.a().c(new k(b));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
        mLabel.setText((CharSequence) "\u522B\u4EBA\u5BB6\u7684\u6392\u884C\u699C");
        mLabelContainer.setOnClickListener(this);
        a();
    }
}
