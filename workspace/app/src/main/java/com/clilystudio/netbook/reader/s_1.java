package com.clilystudio.netbook.reader;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.View;
import android.widget.CheckBox;

import com.umeng.a.b;

final class s implements View.OnClickListener {
    private /* synthetic */ CheckBox a;
    private /* synthetic */ o b;

    s(o o2, CheckBox checkBox) {
        this.b = o2;
        this.a = checkBox;
    }

    @Override
    public final void onClick(View view) {
        b.a(o.a(this.b), "paying_page_purchase", com.clilystudio.netbook.util.I.b);
        if (this.a.isChecked()) {
            b.a(o.a(this.b), "paying_page_auto_choose", com.clilystudio.netbook.util.I.b);
        }
        o.a(this.b, false);
        a.b((Context) o.a(this.b), "auto_buy_chapter" + com.clilystudio.netbook.util.I.a, this.a.isChecked());
        I i2 = new I(this.b, o.a(this.b), "\u8d2d\u4e70\u4e2d...");
        String[] arrstring = new String[]{am.e().getToken(), o.b(this.b).a().getId()};
        i2.b(arrstring);
    }
}
