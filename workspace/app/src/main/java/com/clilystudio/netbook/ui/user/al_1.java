package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.VipPlan$Plan;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class al extends ah {

    RemoveAdActivity a;     // final access specifier removed
    private List b;
    public al(RemoveAdActivity RemoveAdActivity1) {
        a = RemoveAdActivity1;
        b = (List) new ArrayList();
    }

    static List a(al al1) {
        return al1.b;
    }

    public final int a() {
        if (b == null)
            return 0;
        else
            return b.size();
    }

    public final ay a(ViewGroup ViewGroup1, int int2) {
        return (ay) new ao(a, LayoutInflater.from((Context) a).inflate(2130903298, ViewGroup1, false));
    }

    public final void a(ay ay1, int int2) {
        ao ao3 = (ao) ay1;

        ao3.i.setText((CharSequence) ((VipPlan$Plan) b.get(int2)).getName());
        ao3.j.setText((CharSequence) new StringBuilder().append(((VipPlan$Plan) b.get(int2)).getCurrency()).append("\u8FFD\u4E66\u5E01").toString());
        ao3.j.setOnClickListener((View$OnClickListener) new am(this, int2));
        if (int2 >= -1 + b.size())
            ao3.k.setVisibility(8);
        else
            ao3.k.setVisibility(0);
    }

    public final void a(List List1) {
        b.clear();
        b.addAll((Collection) List1);
        b();
    }
}
