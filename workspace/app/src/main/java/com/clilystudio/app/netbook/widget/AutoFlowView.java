package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AutoFlowView extends LinearLayout
        implements View.OnClickListener {
    private static final String a = AutoFlowView.class.getSimpleName();
    private static int b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private static int g;
    private static i h;
    private static int i;
    private List<AutoFlowView.Word> j;
    private List<View> k;
    private int[] l;

    public AutoFlowView(Context paramContext) {
        super(paramContext);
        b();
    }

    public AutoFlowView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        b();
    }

    private void a(List<h> paramList, int paramInt) {
        if (this.j.size() > paramInt << 2) {
            h localh = new h(this);
            localh.a(e);
            localh.a.addAll(this.j.subList(paramInt << 2, Math.min(4 + (paramInt << 2), this.j.size())));
            localh.a(e);
            paramList.add(localh);
        }
    }

    private void b() {
        setOrientation(0);
        this.j = new ArrayList();
        this.k = new ArrayList();
        g = a.a(getContext(), 12.0F);
        b = a.a(getContext(), 6.0F);
        c = a.a(getContext(), 12.0F);
        d = a.a(getContext(), 12.0F);
        e = a.a(getContext(), 16.0F);
        f = a.a(getContext(), 4.0F);
        if (a.a(getContext(), "customer_night_theme", false)) {
            this.l = new int[]{2130837623, 2130837625, 2130837627, 2130837629, 2130837631, 2130837633, 2130837635};
            return;
        }
        this.l = new int[]{2130837622, 2130837624, 2130837626, 2130837628, 2130837630, 2130837632, 2130837634};
    }

    public final void a() {
        Collections.sort(this.j, new g(this));
        removeAllViews();
        this.k.clear();
        LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
        List localList = this.j;
        ArrayList localArrayList1 = new ArrayList();
        int m = getMeasuredWidth();
        ArrayList localArrayList3;
        int n;
        if (m == 0) {
            ArrayList localArrayList2 = new ArrayList();
            a(localArrayList2, 0);
            a(localArrayList2, 1);
            a(localArrayList2, 2);
            localArrayList3 = localArrayList2;
            n = 0;
        }
        int i3;
        for (int i1 = 0; ; i1 = i3) {
            if (n >= localArrayList3.size())
                break label466;
            h localh1 = (h) localArrayList3.get(n);
            int i2 = 0;
            i3 = i1;
            while (true)
                if (i2 < localh1.a.size()) {
                    AutoFlowView.Word localWord1 = (AutoFlowView.Word) localh1.a.get(i2);
                    TextView localTextView = (TextView) localLayoutInflater.inflate(2130903154, null, false);
                    localTextView.setTextSize(12.0F);
                    localTextView.setBackgroundResource(2130837844);
                    localTextView.setPadding(c, b, c, b);
                    localTextView.setText(localWord1.content);
                    localTextView.setOnClickListener(this);
                    localTextView.setTag(Integer.valueOf(localWord1.leftMargin));
                    localTextView.setBackgroundResource(this.l[(i3 % this.l.length)]);
                    this.k.add(localTextView);
                    addView(localTextView);
                    localWord1.show = (1 + localWord1.show);
                    int i4 = i3 + 1;
                    i2++;
                    i3 = i4;
                    continue;
                    h localh2 = new h(this);
                    int i5 = 0;
                    h localh3 = localh2;
                    int i6 = 0;
                    int i7 = 0;
                    while (i5 < localList.size()) {
                        AutoFlowView.Word localWord2 = (AutoFlowView.Word) localList.get(i5);
                        int i8 = localWord2.content.length() * g + (c << 1) + e;
                        i6 += i8;
                        if (i6 >= m - f) {
                            i7++;
                            localh3.a(e);
                            localArrayList1.add(localh3);
                            localh3 = new h(this);
                            i6 = i8;
                        }
                        if (i7 == 3)
                            break;
                        localh3.a.add(localWord2);
                        i5++;
                    }
                    localArrayList3 = localArrayList1;
                    break;
                }
            n++;
        }
        label466:
        a.a(this.j, c.e, "search_hotword.txt");
    }

    public void onClick(View paramView) {
        if (h != null) {
            i locali = h;
            this.k.indexOf(paramView);
            locali.a(((TextView) paramView).getText().toString());
        }
    }

    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
        int m = paramInt3 - c;
        Log.d(a, "changed = " + paramBoolean + " left = 0" + " top = 0" + " right = " + m + " botom = " + paramInt4);
        int n = getChildCount();
        int i1 = 0;
        int i2 = 0;
        int i3 = 0;
        if (i1 < n) {
            View localView = getChildAt(i1);
            int i4 = localView.getMeasuredWidth();
            int i5 = localView.getMeasuredHeight();
            int i6 = ((Integer) localView.getTag()).intValue();
            i2 += i4 + i6;
            if (i3 == 0) ;
            for (int i7 = i5; ; i7 = i5 + i3 * (i5 + d)) {
                if (i2 >= m) {
                    i2 = i4 + i6;
                    i3++;
                    i7 = i5 + i3 * (i5 + d);
                }
                localView.layout(i2 - i4, i7 - i5, i2, i7);
                i1++;
                break;
            }
        }
    }

    protected void onMeasure(int paramInt1, int paramInt2) {
        int m = getChildCount();
        for (int n = 0; n < m; n++) {
            View localView = getChildAt(n);
            localView.measure(0, 0);
            if (n == 0)
                i = 3 * (localView.getMeasuredHeight() + d);
        }
        View.MeasureSpec.getSize(paramInt1);
        setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), i);
    }

    public void setOnItemClickListener(i parami) {
        h = parami;
    }

    public void setWords(List<AutoFlowView.Word> paramList) {
        this.j.clear();
        if ((paramList == null) || (paramList.size() == 0))
            return;
        int m = ((AutoFlowView.Word) paramList.get(0)).show;
        for (int n = 1; n < paramList.size(); n++)
            if (((AutoFlowView.Word) paramList.get(n)).show < m)
                m = ((AutoFlowView.Word) paramList.get(n)).show;
        for (int i1 = 0; i1 < paramList.size(); i1++) {
            AutoFlowView.Word localWord = new AutoFlowView.Word();
            localWord.content = ((AutoFlowView.Word) paramList.get(i1)).content;
            localWord.show = (((AutoFlowView.Word) paramList.get(i1)).show - m);
            this.j.add(localWord);
        }
        a();
    }

    public void setWords(String[] paramArrayOfString) {
        this.j.clear();
        int m = paramArrayOfString.length;
        for (int n = 0; n < m; n++) {
            String str = paramArrayOfString[n];
            AutoFlowView.Word localWord = new AutoFlowView.Word();
            localWord.content = str;
            this.j.add(localWord);
        }
        a();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.AutoFlowView
 * JD-Core Version:    0.6.2
 */