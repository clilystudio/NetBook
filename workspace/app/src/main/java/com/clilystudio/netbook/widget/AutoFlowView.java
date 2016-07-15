package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class AutoFlowView extends LinearLayout implements View.OnClickListener {
    private static final String a = AutoFlowView.class.getSimpleName();
    private static int b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private static int g;
    private static OnItemClickListener h;
    private static int i;
    private List<AutoFlowView.Word> j;
    private int[] l;

    public AutoFlowView(Context context) {
        super(context);
        this.b();
    }

    public AutoFlowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b();
    }

    private void a(List<h> list, int n) {
        if (this.j.size() > n << 2) {
            h h2 = new h();
            h2.a(e);
            h2.a.addAll(this.j.subList(n << 2, Math.min(4 + (n << 2), this.j.size())));
            h2.a(e);
            list.add(h2);
        }
    }

    private void b() {
        this.setOrientation(LinearLayout.HORIZONTAL);
        this.j = new ArrayList<>();
        g = TempUtil.getDipSize(this.getContext(), 12.0f);
        b = TempUtil.getDipSize(this.getContext(), 6.0f);
        c = TempUtil.getDipSize(this.getContext(), 12.0f);
        d = TempUtil.getDipSize(this.getContext(), 12.0f);
        e = TempUtil.getDipSize(this.getContext(), 16.0f);
        f = TempUtil.getDipSize(this.getContext(), 4.0f);
        if (TempUtil.a(this.getContext(), "customer_night_theme", false)) {
            this.l = new int[]{R.drawable.bg_book_info_tag0_dark, R.drawable.bg_book_info_tag1_dark, R.drawable.bg_book_info_tag2_dark, R.drawable.bg_book_info_tag3_dark, R.drawable.bg_book_info_tag4_dark, R.drawable.bg_book_info_tag5_dark, R.drawable.bg_book_info_tag6_dark};
            return;
        }
        this.l = new int[]{R.drawable.bg_book_info_tag0, R.drawable.bg_book_info_tag1, R.drawable.bg_book_info_tag2, R.drawable.bg_book_info_tag3, R.drawable.bg_book_info_tag4, R.drawable.bg_book_info_tag5, R.drawable.bg_book_info_tag6};
    }


    public final void a() {
        List list;
        Collections.sort(this.j, new Comparator<Word>() {
            @Override
            public int compare(Word lhs, Word rhs) {
                return lhs.show - rhs.show;
            }
        });
        this.removeAllViews();
        LayoutInflater layoutInflater = LayoutInflater.from(this.getContext());
        List<AutoFlowView.Word> list2 = this.j;
        ArrayList<h> arrayList = new ArrayList<>();
        int n = this.getMeasuredWidth();
        if (n == 0) {
            ArrayList<h> arrayList2 = new ArrayList<>();
            this.a(arrayList2, 0);
            this.a(arrayList2, 1);
            this.a(arrayList2, 2);
            list = arrayList2;
        } else {
            h h3 = new h();
            int n2 = 0;
            int n3 = 0;
            for (int j = 0; j < list2.size(); ++j) {
                AutoFlowView.Word word = list2.get(j);
                int n4 = word.content.length() * g + (c << 1) + e;
                if ((n2 += n4) >= n - f) {
                    ++n3;
                    h3.a(e);
                    arrayList.add(h3);
                    h3 = new h();
                    n2 = n4;
                }
                if (n3 == 3) {
                    break;
                }
                h3.a.add(word);
            }
            list = arrayList;
        }
        for (int n5 = 0; n5 < list.size(); n5++) {
            h h4 = (h) list.get(n5);
            for (int n8 = 0; n8 < h4.a.size();++n8) {
                AutoFlowView.Word word = h4.a.get(n8);
                TextView textView = (TextView) layoutInflater.inflate(R.layout.autoflow_hot_word, (ViewGroup)getRootView(), false);
                textView.setTextSize(12.0f);
                textView.setBackgroundResource(R.drawable.hot_word_bg);
                textView.setPadding(c, b, c, b);
                textView.setText(word.content);
                textView.setOnClickListener(this);
                textView.setTag(word.leftMargin);
                textView.setBackgroundResource(this.l[n5 % this.l.length]);
                this.addView(textView);
                word.show = 1 + word.show;
            }
        }
        TempUtil.a(this.j, CachePathConst.SearchHistory, "search_hotword.txt");
    }

    @Override
    public void onClick(View view) {
        if (h != null) {
            h.a(((TextView) view).getText().toString());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        int n5 = n3 - c;
        Log.d(a, "changed = " + bl + " left = 0" + " top = 0" + " right = " + n5 + " botom = " + n4);
        int n6 = this.getChildCount();
        int n7 = 0;
        int n8 = 0;
        int n9 = 0;
        while (n7 < n6) {
            View view = this.getChildAt(n7);
            int n10 = view.getMeasuredWidth();
            int n11 = view.getMeasuredHeight();
            int n12 = (Integer) view.getTag();
            int n13 = n9 == 0 ? n11 : n11 + n9 * (n11 + d);
            if ((n8 += n10 + n12) >= n5) {
                n8 = n10 + n12;
                n13 = n11 + ++n9 * (n11 + d);
            }
            view.layout(n8 - n10, n13 - n11, n8, n13);
            ++n7;
        }
    }

    @Override
    protected void onMeasure(int n, int n2) {
        int n3 = this.getChildCount();
        for (int j = 0; j < n3; ++j) {
            View view = this.getChildAt(j);
            view.measure(0, 0);
            if (j != 0) continue;
            i = 3 * (view.getMeasuredHeight() + d);
        }
        View.MeasureSpec.getSize(n);
        this.setMeasuredDimension(View.MeasureSpec.getSize(n), i);
    }

    public void setOnItemClickListener(OnItemClickListener i2) {
        h = i2;
    }

    public void setWords(List<AutoFlowView.Word> list) {
        this.j.clear();
        if (list == null || list.size() == 0) {
            return;
        }
        int n = list.get(0).show;
        for (int j = 1; j < list.size(); ++j) {
            if (list.get(j).show >= n) continue;
            n = list.get(j).show;
        }
        for (int k = 0; k < list.size(); ++k) {
            AutoFlowView.Word word = new AutoFlowView.Word();
            word.content = list.get(k).content;
            word.show = list.get(k).show - n;
            this.j.add(word);
        }
        this.a();
    }

    public void setWords(String[] arrstring) {
        this.j.clear();
        for (String string : arrstring) {
            AutoFlowView.Word word = new AutoFlowView.Word();
            word.content = string;
            this.j.add(word);
        }
        this.a();
    }

    public final static class Word implements Serializable {
        public String content;
        public int show;
        int leftMargin;
        int topMargin;
    }

    class h {
        List<AutoFlowView.Word> a = new ArrayList<>();

        public final void a(int n) {
            for (AutoFlowView.Word anA : this.a) {
                anA.leftMargin = n;
            }
        }
    }

    public interface OnItemClickListener {
        void a(String var1);
    }
}
