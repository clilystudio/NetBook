package com.clilystudio.netbook;

import android.app.Activity;

import java.util.Stack;

public final class ActivityStack {
    private static Stack<Activity> mStack;

    private ActivityStack() {
    }

    public static void add(Activity activity) {
        if (mStack == null) {
            mStack = new Stack<>();
        }
        mStack.add(activity);
    }

    public static void clearAll() {
        if (mStack != null) {
            for (Activity activity : mStack) {
                if (activity != null) {
                    activity.finish();
                }
            }
            mStack.clear();
        }
    }
}
