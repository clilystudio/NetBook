package com.clilystudio.netbook.ui.user;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import java.util.ArrayList;
import java.util.List;

final class al extends ah<ao> {
    final /* synthetic */ RemoveAdActivity a;
    private List<VipPlan$Plan> b;

    public al(RemoveAdActivity removeAdActivity) {
        this.a = removeAdActivity;
        this.b = new ArrayList<VipPlan$Plan>();
    }

    static /* synthetic */ List a(al al2) {
        return al2.b;
    }

    @Override
    public final int a() {
        if (this.b == null) {
            return 0;
        }
        return this.b.size();
    }

    @Override
    public final /* synthetic */ ay a(ViewGroup viewGroup, int n) {
        return new ao(this.a, LayoutInflater.from(this.a).inflate(2130903298, viewGroup, false));
    }

    @Override
    public final /* synthetic */ void a(ay ay2, int n) {
        ao ao2 = (ao) ay2;
        ao2.i.setText(this.b.get(n).getName());
        ao2.j.setText("" + this.b.get(n).getCurrency() + "\u8ffd\u4e66\u5e01");
        ao2.j.setOnClickListener(new am(this, n));
        if (n >= -1 + this.b.size()) {
            ao2.k.setVisibility(View.GONE);
            return;
        }
        ao2.k.setVisibility(View.VISIBLE);
    }

    public final void a(List<VipPlan$Plan> list) {
        this.b.clear();
        this.b.addAll(list);
        this.b();
    }
}
