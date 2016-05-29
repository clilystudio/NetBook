package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.text.SpannableString;

import com.clilystudio.app.netbook.b.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class be {
    protected Context a;
    protected SpannableString b;

    public be(Context paramContext, String paramString) {
        this.a = paramContext;
        this.b = new SpannableString(paramString);
        a();
    }

    private void a(List<bf> paramList) {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            bf localbf = (bf) localIterator.next();
            this.b.setSpan(new c(this.a, localbf), localbf.a(), 1 + localbf.b(), 18);
        }
    }

    protected void a() {
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        int j = 0;
        int k = 0;
        if (i < this.b.length()) {
            int m = this.b.charAt(i);
            if (k == 0)
                if (m == 12298) {
                    j = i;
                    k = 12298;
                }
            while (true) {
                i++;
                break;
                if (m == 12299) {
                    if (i - j < 20)
                        localArrayList.add(new bf(this, this.b.toString().substring(j + 1, i), j, i));
                    j = 0;
                    k = 0;
                }
            }
        }
        a(localArrayList);
    }

    public final SpannableString b() {
        return this.b;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.be
 * JD-Core Version:    0.6.2
 */