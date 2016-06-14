package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.model.PayConsumeRecord$Order;
import com.clilystudio.netbook.model.PayConsumeRecord$PayType;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PayRecordCollapseItem;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

final class S extends BaseAdapter {
    final /* synthetic */ PayConsumeActivity a;
    private LayoutInflater b;
    private List<PayConsumeRecord$Order> c;
    private boolean[] d;

    public S(PayConsumeActivity payConsumeActivity, LayoutInflater layoutInflater) {
        this.a = payConsumeActivity;
        this.b = layoutInflater;
        this.c = new ArrayList<PayConsumeRecord$Order>();
        this.d = new boolean[0];
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(S s, PayConsumeRecord$Order payConsumeRecord$Order, View view, View view2, int n) {
        View view3 = s.b.inflate(2130903347, null);
        PopupWindow popupWindow = new PopupWindow(view3, s.a.getResources().getDimensionPixelSize(2131099902), -2);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.getContentView().setFocusableInTouchMode(true);
        popupWindow.getContentView().setFocusable(true);
        View view4 = view3.findViewById(2131493835);
        View view5 = view3.findViewById(2131493836);
        View view6 = view3.findViewById(2131493837);
        TextView textView = (TextView) view6;
        String string = s.d[n] ? "\u6536\u8d77\u8be6\u60c5" : "\u5c55\u5f00\u8be6\u60c5";
        textView.setText(string);
        view4.setOnClickListener(new V(s, payConsumeRecord$Order, popupWindow));
        view6.setOnClickListener(new W(s, n, popupWindow));
        if (payConsumeRecord$Order.getPayType() == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS) {
            view5.setVisibility(View.VISIBLE);
            view6.setVisibility(View.VISIBLE);
        } else {
            view5.setVisibility(View.GONE);
            view6.setVisibility(View.GONE);
        }
        if (a.i()) {
            popupWindow.showAsDropDown(view, a.a((Context) s.a, 0.0f), 0, 53);
            return;
        }
        popupWindow.showAsDropDown(view, a.a((Context) s.a, 160.0f), 0);
    }

    static /* synthetic */ boolean[] a(S s) {
        return s.d;
    }

    public final void a(List<PayConsumeRecord$Order> list) {
        this.c.clear();
        this.c.addAll(list);
        this.d = new boolean[this.c.size()];
        this.notifyDataSetChanged();
    }

    @Override
    public final int getCount() {
        return this.c.size();
    }

    @Override
    public final Object getItem(int n) {
        return this.c.get(n);
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2;
        Y y2;
        if (view == null) {
            view2 = this.b.inflate(2130903249, viewGroup, false);
            y2 = new Y(this);
            y2.a = (TextView) view2.findViewById(2131493639);
            y2.b = (TextView) view2.findViewById(2131493640);
            y2.c = (TextView) view2.findViewById(2131493641);
            y2.d = (TextView) view2.findViewById(2131493642);
            y2.e = (TextView) view2.findViewById(2131493644);
            y2.f = (TextView) view2.findViewById(2131493646);
            y2.g = view2.findViewById(2131493645);
            y2.h = view2.findViewById(2131493578);
            y2.i = (ImageView) view2.findViewById(2131493643);
            view2.setTag(y2);
        } else {
            y2 = (Y) view.getTag();
            view2 = view;
        }
        PayConsumeRecord$Order payConsumeRecord$Order = this.c.get(n);
        PayConsumeRecord$PayType payConsumeRecord$PayType = payConsumeRecord$Order.getPayType();
        String string = payConsumeRecord$Order.getBookName();
        if (string.length() > 8) {
            string = string.substring(0, 8) + "...";
        }
        y2.a.setText(string);
        y2.e.setText("" + payConsumeRecord$Order.getUseCurrency());
        if (payConsumeRecord$Order.getUseVoucher() > 0) {
            y2.g.setVisibility(View.VISIBLE);
            y2.f.setText("" + payConsumeRecord$Order.getUseVoucher());
        } else {
            y2.g.setVisibility(View.GONE);
        }
        y2.d.setText(t.e((Date) payConsumeRecord$Order.getCreated()));
        y2.c.setText(payConsumeRecord$Order.getPayTypeString());
        if (payConsumeRecord$PayType == PayConsumeRecord$PayType.WHOLE_BOOK || payConsumeRecord$PayType == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS) {
            y2.b.setVisibility(View.GONE);
        } else {
            y2.b.setVisibility(View.VISIBLE);
            if (payConsumeRecord$PayType == PayConsumeRecord$PayType.VIP_SERVICE) {
                y2.a.setText(payConsumeRecord$Order.getBookName());
                y2.c.setText(payConsumeRecord$Order.getChapterTitle());
                y2.b.setText("");
                y2.d.setText("");
            } else {
                y2.a.setVisibility(View.VISIBLE);
                String string2 = payConsumeRecord$Order.getChapterTitle();
                if (string2.length() > 10) {
                    string2 = string2.substring(0, 10) + "...";
                }
                y2.b.setText(string2);
            }
        }
        if (payConsumeRecord$PayType == PayConsumeRecord$PayType.MULTIPLE_CHAPTERS) {
            ((PayRecordCollapseItem) view2).a(payConsumeRecord$Order.getTitles(), n);
            View view3 = y2.h;
            int n2 = this.d[n] ? 0 : 8;
            view3.setVisibility(n2);
        } else {
            y2.h.setVisibility(View.GONE);
        }
        ImageView imageView = y2.i;
        imageView.setOnClickListener(new T(this, n, payConsumeRecord$Order, imageView, view2));
        return view2;
    }
}
