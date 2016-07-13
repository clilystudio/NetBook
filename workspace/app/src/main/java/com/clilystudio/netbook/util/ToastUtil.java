package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;

public class ToastUtil {

    public static void showToast(Activity activity, int resId) {
        if (activity == null) {
            return;
        }
        showToastOnThread(activity, activity.getString(resId), Toast.LENGTH_SHORT);
    }

    public static void showShortToast(Activity activity, String text) {
        showToastOnThread(activity, text, Toast.LENGTH_SHORT);
    }

    public static void showLongToast(Activity activity, String text) {
        showToastOnThread(activity, text, Toast.LENGTH_LONG);
    }

    private static void showToastOnThread(final Activity activity, final String text, final int duration) {
        if (activity == null || text == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(activity.getApplication(), text, duration).show();
            }
        });
    }

    public static void showToast(Context context, String text) {
        if (context == null || text == null) {
            return;
        }
        Toast.makeText(context, text, Toast.LENGTH_SHORT).show();
    }
}
