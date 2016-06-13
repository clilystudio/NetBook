package com.clilystudio.netbook.ui;

import android.content.Context;
import android.text.SpannableString;

import com.clilystudio.netbook.b.c;

import java.util.ArrayList;
import java.util.List;

public class be {
    protected Context a;
    protected SpannableString b;

    public be(Context context, String string) {
        this.a = context;
        this.b = new SpannableString(string);
        this.a();
    }

    private void a(List<bf> list) {
        for (bf bf2 : list) {
            this.b.setSpan(new c(this.a, bf2), bf2.a(), 1 + bf2.b(), 18);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void a() {
        ArrayList<bf> arrayList = new ArrayList<bf>();
        int n = 0;
        int n2 = 0;
        int n3 = 0;
        do {
            if (n >= this.b.length()) {
                this.a(arrayList);
                return;
            }
            char c2 = this.b.charAt(n);
            if (n3 == 0) {
                if (c2 == '\u300a') {
                    n2 = n;
                    n3 = 12298;
                }
            } else if (c2 == '\u300b') {
                if (n - n2 < 20) {
                    arrayList.add(new bf(this, this.b.toString().substring(n2 + 1, n), n2, n));
                }
                n2 = 0;
                n3 = 0;
            }
            ++n;
        } while (true);
    }

    public final SpannableString b() {
        return this.b;
    }
}
