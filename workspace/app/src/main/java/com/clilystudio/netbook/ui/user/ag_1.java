package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.model.PayVoucherRecord$Voucher;
import com.clilystudio.netbook.util.t;

import java.util.ArrayList;
import java.util.List;

final class ag extends BaseAdapter {

    private List a;
    private LayoutInflater b;
    private int c;
    private int d;
    private String e;
    private PayVoucherFragment f;
    public ag(PayVoucherFragment PayVoucherFragment1, LayoutInflater LayoutInflater2) {
        f = PayVoucherFragment1;
        b = LayoutInflater2;
        a = (List) new ArrayList();
        switch (PayVoucherFragment1.getArguments().getInt("tag_index_key")) {
            default:
                return;
            case 0:
                c = am.b((Context) PayVoucherFragment1.getActivity(), 2130772009);
                d = 2131427467;
                e = "\u53EF\n\u4F7F\n\u7528";
                return;
            case 1:
                c = am.b((Context) PayVoucherFragment1.getActivity(), 2130772008);
                d = 2131427466;
                e = "\u5DF2\n\u7528\n\u5B8C";
                return;
            case 2:
                c = am.b((Context) PayVoucherFragment1.getActivity(), 2130772008);
                d = 2131427466;
                e = "\u5DF2\n\u8FC7\n\u671F";
                return;
        }
    }

    public final void a(List List1) {
        a = List1;
        notifyDataSetChanged();
    }

    public final int getCount() {
        return a.size();
    }

    public final Object getItem(int int1) {
        return a.get(int1);
    }

    public final long getItemId(int int1) {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        PayVoucherRecord$Voucher Voucher4 = (PayVoucherRecord$Voucher) a.get(int1);
        Object Object6;

        if (View2 == null) {
            Object Object5 = new ah(this);

            View2 = b.inflate(2130903320, null);
            ((ah) Object5).a = (TextView) View2.findViewById(2131493794);
            ((ah) Object5).b = (TextView) View2.findViewById(2131493797);
            ((ah) Object5).c = (TextView) View2.findViewById(2131493795);
            ((ah) Object5).d = (TextView) View2.findViewById(2131493796);
            ((ah) Object5).e = (TextView) View2.findViewById(2131493793);
            View2.setTag(Object5);
            Object6 = Object5;
        } else
            Object6 = (ah) View2.getTag();
        ((ah) Object6).a.setText((CharSequence) new StringBuilder().append(Voucher4.getAmount()).toString());
        ((ah) Object6).b.setText((CharSequence) Voucher4.getFrom());
        ((ah) Object6).c.setText((CharSequence) new StringBuilder("\u4F59\u989D\uFF1A").append(Voucher4.getBalance()).toString());
        ((ah) Object6).d.setText((CharSequence) new StringBuilder("\u6709\u6548\u671F\u81F3").append(t.c(Voucher4.getExpired())).toString());
        ((ah) Object6).e.setText((CharSequence) e);
        ((ah) Object6).e.setTextColor(f.getResources().getColor(d));
        ((ah) Object6).e.setBackgroundResource(c);
        return View2;
    }
}
