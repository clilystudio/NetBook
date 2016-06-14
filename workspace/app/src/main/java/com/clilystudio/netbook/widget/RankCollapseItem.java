package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.k;
import com.clilystudio.netbook.model.BookRankSummary;

import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RankCollapseItem extends LinearLayout
        implements View.OnClickListener {
    @InjectView(value = 2131493199)
    ImageView mArrow;
    @InjectView(value = 2131493603)
    View mBottomDivdier;
    @InjectView(value = 2131493578)
    LinearLayout mItemContainer;
    @InjectView(value = 2131493515)
    TextView mLabel;
    @InjectView(value = 2131493601)
    RelativeLayout mLabelContainer;
    @InjectView(value = 2131493602)
    View mTopDivdier;
    private boolean a;
    private int b;

    public RankCollapseItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a() {
        ImageView imageView = this.mArrow;
        int n = this.a ? 2130838065 : 2130838064;
        imageView.setImageResource(n);
        LinearLayout linearLayout = this.mItemContainer;
        int n2 = this.a ? 0 : 8;
        linearLayout.setVisibility(n2);
        View view = this.mBottomDivdier;
        int n3 = this.a ? 0 : 8;
        view.setVisibility(n3);
        View view2 = this.mTopDivdier;
        boolean bl = this.a;
        int n4 = 0;
        if (!bl) {
            n4 = 8;
        }
        view2.setVisibility(n4);
        TextView textView = this.mLabel;
        int n5 = this.a ? -43230 : am.a((Context) this.getContext(), (int) 16842904);
        textView.setTextColor(n5);
    }

    public final void a(List<BookRankSummary> list, int n, boolean bl) {
        this.b = n;
        this.mItemContainer.removeAllViews();
        LayoutInflater layoutInflater = LayoutInflater.from(this.getContext());
        for (BookRankSummary bookRankSummary : list) {
            TextView textView = (TextView) layoutInflater.inflate(2130903248, (ViewGroup) this.mItemContainer, false);
            textView.setText(bookRankSummary.getTitle());
            this.mItemContainer.addView(textView);
            textView.setOnClickListener(new at(this, bookRankSummary, bl));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        boolean bl = !this.a;
        this.a = bl;
        this.a();
        if (this.a) {
            i.a().c(new k(this.b));
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject(this);
        this.mLabel.setText("\u522b\u4eba\u5bb6\u7684\u6392\u884c\u699c");
        this.mLabelContainer.setOnClickListener(this);
        this.a();
    }
}
