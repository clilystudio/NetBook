package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.text.SpannableString;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class by extends be {
    private com.clilystudio.app.netbook.util.a.a c;

    public by(Context paramContext, String paramString) {
        super(paramContext, paramString);
    }

    private void a(List<bz> paramList) {
        Iterator localIterator = paramList.iterator();
        int i = 0;
        while (localIterator.hasNext()) {
            bz localbz = (bz) localIterator.next();
            int j = localbz.c() - localbz.b() - localbz.a().getLabel().length();
            localbz.a(localbz.b() - i);
            i += j;
            localbz.b(localbz.c() - i);
        }
        this.b = new SpannableString(this.b.toString().replaceAll("\\[\\[.+? (.+?)\\]\\]", "$1"));
    }

    private void b(List<bz> paramList) {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            bz localbz = (bz) localIterator.next();
            this.b.setSpan(new com.clilystudio.app.netbook.b.a(this.a, localbz.a()), localbz.b(), localbz.c(), 17);
        }
    }

    protected final void a() {
        this.c = new com.clilystudio.app.netbook.util.a.a();
        ArrayList localArrayList = new ArrayList();
        String str = this.b.toString();
        Matcher localMatcher = Pattern.compile("\\[\\[.+?\\]\\]").matcher(str);
        while (localMatcher.find()) {
            bz localbz = new bz(this, (byte) 0);
            localbz.a(com.clilystudio.app.netbook.util.a.a.a(localMatcher.group(0)));
            localbz.a(localMatcher.start(0));
            localbz.b(localMatcher.end(0));
            localArrayList.add(localbz);
        }
        a(localArrayList);
        if (localArrayList.size() > 0)
            b(localArrayList);
        super.a();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.by
 * JD-Core Version:    0.6.2
 */