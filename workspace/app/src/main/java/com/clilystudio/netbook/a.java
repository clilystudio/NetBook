package com.clilystudio.netbook;

import android.app.Activity;

import java.util.Stack;

public final class a {
    private static Stack<Activity> a;
    private static a b;

    private a() {
    }

    public static a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    public static void a(Activity activity) {
        if (a == null) {
            a = new Stack<>();
        }
        a.add(activity);
    }

    public static void b() {
        if (a == null) {
            return;
        }
        for (Activity activity : a) {
            if (activity == null) continue;
            activity.finish();
        }
        a.clear();
    }
}
