package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.UgcFilterRoot$FilterGroup;
import com.clilystudio.netbook.widget.UgcFilterTextView;

final class ak
        extends ah {
    final /* synthetic */ UGCMainActivity c;
    boolean a;
    LayoutInflater b;
    private UgcFilterRoot$FilterGroup[] d;

    public ak(UGCMainActivity uGCMainActivity, Context context, UgcFilterRoot$FilterGroup[] arrfilterGroup) {
        this.c = uGCMainActivity;
        this.a = false;
        this.b = LayoutInflater.from(context);
        this.d = arrfilterGroup;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final int a() {
        int n;
        if (this.a) {
            n = 1;
            do {
                return n + this.d.length;
                break;
            } while (true);
        }
        n = 0;
        return n + this.d.length;
    }

    public final int a(int n) {
        if (n == 0 && this.a) {
            return 0;
        }
        return 1;
    }

    public final ay a(ViewGroup viewGroup, int n) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return new an(this, this.b.inflate(2130903403, viewGroup, false));
            }
            case 1:
        }
        return new al(this, this.b.inflate(2130903406, viewGroup, false));
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(ay ay2, int n) {
        if (n == 0 && this.a) {
            String string;
            an an2 = (an) ay2;
            an2.j = string = this.c.getString(2131034561);
            if (UGCMainActivity.j(an2.k.c).equals(string)) {
                an2.i.setTextColor(android.support.design.widget.am.a((Context) an2.k.c, (int) 2130771972));
                an2.i.setBackgroundResource(android.support.design.widget.am.b((Context) an2.k.c, (int) 2130771998));
                return;
            }
            an2.i.setTextColor(android.support.design.widget.am.a((Context) an2.k.c, (int) 16842808));
            an2.i.setBackgroundResource(android.support.design.widget.am.b((Context) an2.k.c, (int) 2130771974));
            return;
        }
        al al2 = (al) ay2;
        UgcFilterRoot$FilterGroup[] arrugcFilterRoot$FilterGroup = this.d;
        int n2 = this.a ? 1 : 0;
        UgcFilterRoot$FilterGroup ugcFilterRoot$FilterGroup = arrugcFilterRoot$FilterGroup[n - n2];
        if (ugcFilterRoot$FilterGroup == null) return;
        al2.i.setText(ugcFilterRoot$FilterGroup.getName());
        int n3 = (-1 + (4 + ugcFilterRoot$FilterGroup.getTags().length)) / 4;
        String[] arrstring = ugcFilterRoot$FilterGroup.getTags();
        al2.j.removeAllViews();
        int n4 = 0;
        while (n4 < n3) {
            ViewGroup viewGroup = (ViewGroup) al2.k.b.inflate(2130903407, (ViewGroup) al2.j, false);
            for (int i = 0; i < Math.min(4, arrstring.length - (n4 << 2)); ++i) {
                UgcFilterTextView ugcFilterTextView = (UgcFilterTextView) viewGroup.getChildAt(i);
                String string = arrstring[i + (n4 << 2)];
                ugcFilterTextView.setVisibility(0);
                ugcFilterTextView.setText(string);
                ugcFilterTextView.setSelected(UGCMainActivity.j(al2.k.c).equals(ugcFilterTextView.a()));
                ugcFilterTextView.setOnClickListener(new am(al2, string));
            }
            if (arrstring.length - (n4 << 2) < 4) {
                for (int j = arrstring.length - (n4 << 2); j < 4; ++j) {
                    viewGroup.getChildAt(j).setVisibility(4);
                }
            }
            al2.j.addView(viewGroup);
            ++n4;
        }
    }
}
