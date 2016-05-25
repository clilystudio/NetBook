package com.clilystudio.app.netbook;

import android.app.Activity;

import java.util.Stack;

public final class a_ActivityStack {
    private static Stack<Activity> mActivityStack;
    private static a_ActivityStack mInstance;

    public static a_ActivityStack a_getInstance() {
        if (mInstance == null) {
            mInstance = new a_ActivityStack();
        }
        return mInstance;
    }

    public static void a_addActivity(Activity activity) {
        if (mActivityStack == null) {
            mActivityStack = new Stack<>();
        }
        mActivityStack.add(activity);
    }

    public static void b_clearAll() {
        if (mActivityStack != null) {
            for (Activity activity : mActivityStack) {
                if (activity != null) {
                    activity.finish();
                }
            }
            mActivityStack.clear();
        }
    }
}
