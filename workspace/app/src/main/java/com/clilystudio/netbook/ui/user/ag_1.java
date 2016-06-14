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
    private List<PayVoucherRecord$Voucher> a;
    private LayoutInflater b;
    private int c;
    private int d;
    private String e;
    private /* synthetic */ PayVoucherFragment f;

    public ag(PayVoucherFragment payVoucherFragment, LayoutInflater layoutInflater) {
        this.f = payVoucherFragment;
        this.b = layoutInflater;
        this.a = new ArrayList<PayVoucherRecord$Voucher>();
        switch (payVoucherFragment.getArguments().getInt("tag_index_key")) {
            default: {
                return;
            }
            case 0: {
                this.c = am.b((Context) payVoucherFragment.getActivity(), 2130772009);
                this.d = 2131427467;
                this.e = "\u53ef\n\u4f7f\n\u7528";
                return;
            }
            case 1: {
                this.c = am.b((Context) payVoucherFragment.getActivity(), 2130772008);
                this.d = 2131427466;
                this.e = "\u5df2\n\u7528\n\u5b8c";
                return;
            }
            case 2:
        }
        this.c = am.b((Context) payVoucherFragment.getActivity(), 2130772008);
        this.d = 2131427466;
        this.e = "\u5df2\n\u8fc7\n\u671f";
    }

    public final void a(List<PayVoucherRecord$Voucher> list) {
        this.a = list;
        this.notifyDataSetChanged();
    }

    @Override
    public final int getCount() {
        return this.a.size();
    }

    @Override
    public final Object getItem(int n) {
        return this.a.get(n);
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
        ah ah2;
        PayVoucherRecord$Voucher payVoucherRecord$Voucher = this.a.get(n);
        if (view == null) {
            ah ah3 = new ah(this);
            view = this.b.inflate(2130903320, null);
            ah3.a = (TextView) view.findViewById(2131493794);
            ah3.b = (TextView) view.findViewById(2131493797);
            ah3.c = (TextView) view.findViewById(2131493795);
            ah3.d = (TextView) view.findViewById(2131493796);
            ah3.e = (TextView) view.findViewById(2131493793);
            view.setTag(ah3);
            ah2 = ah3;
        } else {
            ah2 = (ah) view.getTag();
        }
        ah2.a.setText("" + payVoucherRecord$Voucher.getAmount());
        ah2.b.setText(payVoucherRecord$Voucher.getFrom());
        ah2.c.setText("\u4f59\u989d\uff1a" + payVoucherRecord$Voucher.getBalance());
        ah2.d.setText("\u6709\u6548\u671f\u81f3" + t.c(payVoucherRecord$Voucher.getExpired()));
        ah2.e.setText(this.e);
        ah2.e.setTextColor(this.f.getResources().getColor(this.d));
        ah2.e.setBackgroundResource(this.c);
        return view;
    }
}
