package com.clilystudio.netbook.ui;

import android.content.Context;
import android.text.SpannableString;

import com.clilystudio.netbook.util.a.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class by
        extends be {
    private a c;

    public by(Context context, String string) {
        super(context, string);
    }

    private void a(List<bz> list) {
        Iterator<bz> iterator = list.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            bz bz2 = iterator.next();
            int n2 = bz2.c() - bz2.b() - bz2.a().getLabel().length();
            bz2.a(bz2.b() - n);
            bz2.b(bz2.c() - (n += n2));
        }
        this.b = new SpannableString(this.b.toString().replaceAll("\\[\\[.+? (.+?)\\]\\]", "$1"));
    }

    private void b(List<bz> list) {
        for (bz bz2 : list) {
            this.b.setSpan(new com.clilystudio.netbook.b.a(this.a, bz2.a()), bz2.b(), bz2.c(), 17);
        }
    }

    @Override
    protected final void a() {
        this.c = new a();
        ArrayList<bz> arrayList = new ArrayList<bz>();
        String string = this.b.toString();
        Matcher matcher = Pattern.compile("\\[\\[.+?\\]\\]").matcher(string);
        while (matcher.find()) {
            bz bz2 = new bz(this, 0);
            bz2.a(a.a(matcher.group(0)));
            bz2.a(matcher.start(0));
            bz2.b(matcher.end(0));
            arrayList.add(bz2);
        }
        this.a(arrayList);
        if (arrayList.size() > 0) {
            this.b(arrayList);
        }
        super.a();
    }
}
