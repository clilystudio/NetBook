package com.clilystudio.netbook;

import android.app.Activity;

import java.util.Iterator;
import java.util.Stack;

public final class a {
    private static Stack<Activity> a;
    private static a b;

    public static a a() {
        if (b == null)
            b = new a();
        return b;
    }

    public static void a(Activity paramActivity) {
        if (a == null)
            a = new Stack();
        a.add(paramActivity);
    }

    public static void b() {
        if (a == null)
            return;
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
            Activity localActivity = (Activity) localIterator.next();
            if (localActivity == null)
                continue;
            localActivity.finish();
        }
        a.clear();
    }
}

