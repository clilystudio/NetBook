package com.clilystudio.netbook;

import android.app.Activity;

import java.util.Iterator;
import java.util.Stack;

public final class ActivityStack {
    private static Stack<Activity> stack;
    private static ActivityStack instance;

    public static ActivityStack getInstance() {
        if (instance == null) {
            instance = new ActivityStack();
        }
        return instance;
    }

    public static void addActivity(Activity activity) {
        if (stack == null) {
            stack = new Stack();
        }
        stack.add(activity);
    }

    public static void clearAll() {
        if (stack != null) {
            Iterator<Activity> iterator = stack.iterator();
            while (iterator.hasNext()) {
                Activity activity = iterator.next();
                if (activity != null) {
                    activity.finish();
                }
            }
            stack.clear();
        }
    }
}

