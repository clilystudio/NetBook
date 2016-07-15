package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.TypedValue;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.List;

public class CommonUtil {

    private static PackageInfo getPackageInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int getAttrColor(Context context, int attr) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{attr});
        int color = typedArray.getColor(0, 0);
        typedArray.recycle();
        return color;
    }

    public static int getAttrResource(Context context, int attr) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{attr});
        int resourceId = typedArray.getResourceId(0, 0);
        typedArray.recycle();
        return resourceId;
    }

    public static Bitmap getNinePatchBitmap(int id, int width, int height, Context context) {
        Resources resources = context.getResources();
        Bitmap bitmap = BitmapFactory.decodeResource(resources, id);
        NinePatchDrawable ninePatchDrawable = new NinePatchDrawable(resources, bitmap, bitmap.getNinePatchChunk(), new Rect(), null);
        ninePatchDrawable.setBounds(0, 0, width, height);
        Bitmap bitmap2 = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        ninePatchDrawable.draw(new Canvas(bitmap2));
        return bitmap2;
    }

    public static Account checkLogin(Activity activity) {
        if (activity == null) {
            return null;
        }
        Account account = CommonUtil.getAccount();
        if (account != null) {
            return account;
        }
        ToastUtil.showShortToast(activity, "请登录后再操作");
        activity.startActivity(AuthLoginActivity.a(activity));
        return null;
    }

    public static void viewChapterLink(Activity activity, String chapterLink, String errorMsg) {
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(chapterLink));
        try {
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            if (errorMsg != null) {
                ToastUtil.showShortToast(activity, errorMsg);
            }
        }
    }

    public static boolean isBlank(String string) {
        if (string == null) {
            return true;
        }
        int length = string.length();
        if (length == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(string.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static DisplayMetrics getDisplayMetrics(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String convertToSimple(Context context, String traditional) {
        if (traditional == null) {
            return null;
        }
        CharacterUtil characterUtil = CharacterUtil.getInstance(context);
        char[] chars = new char[traditional.length()];
        for (int n = 0; n < traditional.length(); n++) {
            chars[n] = characterUtil.getSimpleChar(traditional.charAt(n));
        }
        return new String(chars);
    }

    public static <T> T getMetaData(Context context, String key) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.GET_META_DATA);
            if (applicationInfo.metaData != null) {
                return (T) applicationInfo.metaData.get(key);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void setReadMode(String bookId, int readMode) {
        BookReadRecord bookReadRecord = BookReadRecord.get(bookId);
        if (bookReadRecord != null) {
            bookReadRecord.setReadMode(readMode);
            bookReadRecord.save();
        } else {
            MyApplication.getInstance().setReadMode(readMode);
        }
    }

    public static Account getAccount() {
        MyApplication myApplication = MyApplication.getInstance();
        String userId = myApplication.getProperty("user.id");
        String token = myApplication.getProperty("account.token");
        if (userId == null || token == null) {
            return null;
        }
        Account account = new Account();
        User user = new User();
        user.setId(userId);
        user.setNickname(myApplication.getProperty("user.name"));
        user.setAvatar(myApplication.getProperty("user.avatar"));
        user.setLv(a.b(myApplication.getProperty("user.lv"), 0));
        user.setGender(myApplication.getProperty("user.gender"));
        account.setOk(true);
        account.setToken(token);
        account.setUser(user);
        return account;
    }

    public static String encodeUrl(String urlString) {
        try {
            if (urlString != null) {
                return URLEncoder.encode(urlString, "UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String decodeUrl(String urlString) {
        try {
            if (urlString != null) {
                return URLDecoder.decode(urlString, "UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int getDownloadStatus(String bookId) {
        BookDlRecord bookDlRecord = BookDlRecord.get(bookId);
        if (!CommonUtil.isDownloading(bookId) || bookDlRecord == null) {
            return 0;
        }
        return bookDlRecord.getStatus();
    }

    public static String getVersionName(Context context) {
        PackageInfo packageInfo = CommonUtil.getPackageInfo(context);
        if (packageInfo != null) {
            return packageInfo.versionName;
        } else {
            return "";
        }
    }

    public static boolean isLogined() {
        return CommonUtil.getAccount() != null;
    }

    public static String getAndroidId() {
        return Settings.Secure.getString(MyApplication.getInstance().getContentResolver(), Settings.Secure.ANDROID_ID);
    }

    public static String getImportNofityTime(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = sharedPreferences.getString("pref_new_imp_notif_time", null);
        if (string == null) {
            string = "0";
            a.e(context, "pref_new_imp_notif_time", string);
        }
        return string;
    }

    public static boolean isDownloading(String bookId) {
        List<String> downloadList = MyApplication.getInstance().getBookDownloadList();
        return downloadList != null && downloadList.contains(bookId);
    }

    public static String getUnimportNofityTime(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = sharedPreferences.getString("pref_new_unimp_notif_time", null);
        if (string == null) {
            string = "0";
            a.e(context, "pref_new_unimp_notif_time", string);
        }
        return string;
    }

    public static int getStatusBarHeight(Context context) {
        int statusBarHeight = 0;
        if (context != null) {
            int resourceId = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (resourceId > 0) {
                statusBarHeight = context.getResources().getDimensionPixelSize(resourceId);
            }
        }
        return statusBarHeight;
    }

    public static int getActionBarHeight(Context context) {
        TypedValue typedValue = new TypedValue();
        int actionBarHeight = 0;
        if (context.getTheme().resolveAttribute(android.R.attr.actionBarSize, typedValue, true)) {
            actionBarHeight = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return actionBarHeight;
    }

    public static boolean isFirstLaunch(Context context) {
        a.b(context, "is_first_launch_app", false);
        return a.a(context, "is_first_launch_app", true);
    }
}
