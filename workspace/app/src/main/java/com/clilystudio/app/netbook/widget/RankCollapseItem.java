package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.k;
import com.clilystudio.app.netbook.model.BookRankSummary;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.util.Iterator;
import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RankCollapseItem extends LinearLayout
        implements View.OnClickListener {
    private boolean a;
    private int b;

    @InjectView(2131493199)
    ImageView mArrow;

    @InjectView(2131493603)
    View mBottomDivdier;

    @InjectView(2131493578)
    LinearLayout mItemContainer;

    @InjectView(2131493515)
    TextView mLabel;

    @InjectView(2131493601)
    RelativeLayout mLabelContainer;

    @InjectView(2131493602)
    View mTopDivdier;

    public RankCollapseItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    private void a() {
        ImageView localImageView = this.mArrow;
        int i;
        int j;
        label35:
        int k;
        label57:
        int m;
        label84:
        TextView localTextView;
        if (this.a) {
            i = 2130838065;
            localImageView.setImageResource(i);
            LinearLayout localLinearLayout = this.mItemContainer;
            if (!this.a)
                break label122;
            j = 0;
            localLinearLayout.setVisibility(j);
            View localView1 = this.mBottomDivdier;
            if (!this.a)
                break label129;
            k = 0;
            localView1.setVisibility(k);
            View localView2 = this.mTopDivdier;
            boolean bool = this.a;
            m = 0;
            if (!bool)
                break label136;
            localView2.setVisibility(m);
            localTextView = this.mLabel;
            if (!this.a)
                break label143;
        }
        label129:
        label136:
        label143:
        for (int n = -43230; ; n = am_CommonUtils.a_getTextColor(getContext(), 16842904)) {
            localTextView.setTextColor(n);
            return;
            i = 2130838064;
            break;
            label122:
            j = 8;
            break label35;
            k = 8;
            break label57;
            m = 8;
            break label84;
        }
    }

    public final void a(List<BookRankSummary> paramList, int paramInt, boolean paramBoolean) {
        this.b = paramInt;
        this.mItemContainer.removeAllViews();
        LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            BookRankSummary localBookRankSummary = (BookRankSummary) localIterator.next();
            TextView localTextView = (TextView) localLayoutInflater.inflate(2130903248, this.mItemContainer, false);
            localTextView.setText(localBookRankSummary.getTitle());
            this.mItemContainer.addView(localTextView);
            localTextView.setOnClickListener(new at(this, localBookRankSummary, paramBoolean));
        }
    }

    public void onClick(View paramView) {
        if (!this.a) ;
        for (boolean bool = true; ; bool = false) {
            this.a = bool;
            a();
            if (this.a)
                i.a().c(new k(this.b));
            return;
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject(this);
        this.mLabel.setText("别人家的排行榜");
        this.mLabelContainer.setOnClickListener(this);
        a();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.RankCollapseItem
 * JD-Core Version:    0.6.2
 */