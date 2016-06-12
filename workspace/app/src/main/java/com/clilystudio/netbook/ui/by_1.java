package com.clilystudio.netbook.ui;

import android.content.Context;
import android.text.SpannableString;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class by extends be {

    private com.clilystudio.netbook.util.a.a c;

    public by(Context Context1, String String2) {
        super(Context1, String2);
    }

    private void a(List List1) {
        Iterator Iterator2 = List1.iterator();
        int int3 = 0;

        while (Iterator2.hasNext()) {
            bz bz4 = (bz) Iterator2.next();
            int int5 = bz4.c() - bz4.b() - bz4.a().getLabel().length();

            bz4.a(bz4.b() - int3);
            int3 += int5;
            bz4.b(bz4.c() - int3);
        }
        b = new SpannableString((CharSequence) b.toString().replaceAll("\\[\\[.+? (.+?)\\]\\]", "$1"));
    }

    private void b(List List1) {
        Iterator Iterator2 = List1.iterator();

        while (Iterator2.hasNext()) {
            bz bz3 = (bz) Iterator2.next();

            b.setSpan(new com.clilystudio.netbook.b.a(a, bz3.a()), bz3.b(), bz3.c(), 17);
        }
    }

    protected final void a() {
        Object Object1;
        Object Object2;
        Matcher Matcher3;

        c = new com.clilystudio.netbook.util.a.a();
        Object1 = new ArrayList();
        Object2 = b.toString();
        Matcher3 = Pattern.compile("\\[\\[.+?\\]\\]").matcher((CharSequence) Object2);
        while (Matcher3.find()) {
            Object Object4 = new bz(this, (byte) 0);

            ((bz) Object4).a(com.clilystudio.netbook.util.a.a.a(Matcher3.group(0)));
            ((bz) Object4).a(Matcher3.start(0));
            ((bz) Object4).b(Matcher3.end(0));
            ((List) Object1).add(Object4);
        }
        a((List) Object1);
        if (((List) Object1).size() > 0)
            b((List) Object1);
        super.a();
    }
}
