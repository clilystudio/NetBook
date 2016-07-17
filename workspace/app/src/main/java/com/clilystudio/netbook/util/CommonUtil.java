package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.ListView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.xiaomi.mipush.sdk.MiPushClient;

import org.mozilla.universalchardet.UniversalDetector;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
        user.setLv(CommonUtil.parseInt(myApplication.getProperty("user.lv")));
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
            CommonUtil.putStringPref(context, "pref_new_imp_notif_time", string);
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
            CommonUtil.putStringPref(context, "pref_new_unimp_notif_time", string);
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
        CommonUtil.putBoolPref(context, "is_first_launch_app", false);
        return CommonUtil.getBoolPref(context, "is_first_launch_app", true);
    }

    private static String cipherBookId;
    private static String cipherTocId;
    private static String cipherCheckSum;

    public static String getChapterSecurity(String string) {
        if (cipherBookId == null || cipherTocId == null || cipherCheckSum == null) {
            return null;
        }
        String encretyStr = CipherUtil.b(cipherTocId, CipherUtil.b(cipherBookId, cipherCheckSum));
        if (encretyStr != null && encretyStr.length() >= 20) {
            String string2 = encretyStr.substring(0, 20);
            if (!BookInfoUtil.h) {
                return CipherUtil.getNewAdvert(string2, string, MyApplication.getInstance());
            }
            BookInfoUtil.h = false;
            long l = 7200 + new Date().getTime() / 1000;
            return CipherUtil.getNewAdvertWork(string2, l, string, MyApplication.getInstance());
        } else {
            return null;
        }
    }

    public static boolean deleteDir(String path) {
        if (!path.endsWith(File.separator)) {
            path = path + File.separator;
        }
        File file = new File(path);
        if (file.exists() && file.isDirectory()) {
            File[] arrfile = file.listFiles();
            if (arrfile != null) {
                for (File file2 : arrfile) {
                    if (file2.isFile()) {
                        if (!deleteFile(file2.getAbsolutePath())) {
                            return false;
                        }
                    } else {
                        if (!deleteDir(file2.getAbsolutePath())) {
                            return false;
                        }
                    }
                }
            }
            return file.delete();
        }
        return false;
    }

    public static boolean deleteFile(String path) {
        File file = new File(path);
        return file.isFile() && file.exists() && file.delete();
    }

    public static BufferedReader getBufferedReader(String path) {
        try {
            return new BufferedReader(new InputStreamReader(new FileInputStream(new File(path)), detectCharset(path)));
        } catch (UnsupportedEncodingException | FileNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static String detectCharset(String path) {
        int n2;
        byte[] arrby = new byte[4096];
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(path);
            UniversalDetector universalDetector = new UniversalDetector(null);
            while ((n2 = fileInputStream.read(arrby)) > 0 && !universalDetector.isDone()) {
                universalDetector.handleData(arrby, 0, n2);
            }
            universalDetector.dataEnd();
            String string2 = universalDetector.getDetectedCharset();
            universalDetector.reset();
            if (string2 == null) {
                string2 = "utf-8";
            }
            return string2;
        } catch (IOException e1) {
            e1.printStackTrace();
        } finally {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "utf-8";
    }

    public static File makeDir(String path) {
        if (!isMounted()) {
            return null;
        }
        File file = new File(path);
        if (file.exists()) return file;
        if (file.mkdirs()) return file;
        return null;
    }

    public static int getWindowHeight(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String[] splitSourceId(String sourceId) {
        String[] arrstring;
        if (sourceId == null || (arrstring = sourceId.split(":")).length < 2) {
            return null;
        }
        return arrstring;
    }

    private static SharedPreferences.Editor getEditor(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).edit();
    }

    public static String getWebOptUrl(String modeName) {
        if ("soso".equals(modeName)) {
            return "http://book.soso.com/ajax?m=show_bookdetail&resourceid=...";
        }
        if ("sogou".equals(modeName)) {
            return "http://novel.mse.sogou.com/content.php/&page=1&md=...";
        }
        if ("leidian".equals(modeName)) {
            return "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=...";
        }
        if ("easou".equals(modeName)) {
            return "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=...";
        }
        return null;
    }

    public static boolean isBlank(String string) {
        if (string != null && string.length() > 0) {
            for (int i = 0; i < string.length(); i++) {
                char c = string.charAt(i);
                if (c != ' ' && c != '\t' && c != '\r' && c != '\n') {
                    return false;
                }
            }
        }
        return true;
    }

    public static int getDipSize(Context context, float pixSize) {
        if (context == null) {
            return 0;
        }
        return (int) (0.5f + pixSize * context.getResources().getDisplayMetrics().density);
    }

    public static int getIntPref(Context context, String key, int defValue) {
        if (context == null) {
            return defValue;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(key, defValue);
    }

    public static Bitmap getCircleBitmap(Bitmap bitmap) {
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0x424242);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap2;
    }

    public static ChapterRoot getChapterRoot(String p0, ChapterLink[] p1, int p2) {
        BufferedReader v2 = null;
        try {
            ChapterLink v5 = p1[p2];
            ChapterRoot v0 = new ChapterRoot();
            Chapter v6 = new Chapter();
            v2 = getBufferedReader(p0);
            if (v2 != null) {
                int v4 = v5.getTxtLineOffset();
                for (int v3 = 0; v3 < v4; v3++) {
                    v2.readLine();
                }
                int v3 = -1;
                if (p2 < p1.length - 1) {
                    v3 = p1[p2 + 1].getTxtLineOffset() - v5.getTxtLineOffset();
                }
                String v41 = "";
                String v51 = v2.readLine();
                while (v51 != null && v3 != 0) {
                    v41 = v41 + "\n" + v5;
                    v3--;
                    v51 = v2.readLine();
                }
                v6.setBody(getBody(v41));
                v0.setChapter(v6);
                return v0;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (v2 != null) {
                try {
                    v2.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return null;
    }

    public static String formatFileSize(long fileSize) {
        if (fileSize < 1000) {
            return "" + fileSize + " B";
        }
        int n2 = (int) (Math.log(fileSize) / Math.log(1000.0));
        String string2 = "" + "kMGTPE".charAt(n2 - 1);
        Object[] arrobject = new Object[]{(double) fileSize / Math.pow(1000.0, n2), string2};
        return String.format(Locale.CHINA, "%.1f %sB", arrobject);
    }

    public static String getMixTocId(String bookId, int readMode, String sourceId, String tocId) {
        if (readMode == 5) {
            return "MIX_TOC_ID" + bookId;
        }
        if (readMode == 0) return tocId;
        if (!canDownload(readMode)) return null;
        if (readMode != 3) return sourceId + "_" + bookId;
        String[] arrstring = splitSourceId(sourceId);
        if (arrstring == null) return sourceId + "_" + bookId;
        return arrstring[0] + "_" + bookId;
    }

    public static void addHeaderView(Context context, ListView listView) {
        View view = new View(context);
        view.setLayoutParams(new AbsListView.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, context.getResources().getDimensionPixelSize(R.dimen.tab_overlap)));
        if (getBoolPref(context, "customer_night_theme", false)) {
            view.setBackgroundResource(R.drawable.bg_dark_list_item);
        } else {
            view.setBackgroundResource(R.drawable.bg_list_item);
        }
        view.setEnabled(false);
        listView.addHeaderView(view);
    }

    public static void saveSourceRecord(TocSource tocSource, String bookId) {
        String source = tocSource.getSource();
        String sourceId = tocSource.getSourceId();
        SourceRecord sourceRecord = SourceRecord.get(bookId, source);
        if (sourceRecord == null) {
            SourceRecord.create(bookId, source, sourceId);
        } else if (sourceRecord.getSourceId() == null) {
            sourceRecord.setSourceId(sourceId);
            sourceRecord.save();
        }
    }

    public static void saveObject(Object object, String path, String name) {
        ObjectOutputStream oos = null;
        try {
            File file = new File(makeDir(path), name);
            if (!file.exists()) {
                if (!file.createNewFile()) {
                    return;
                }
            }
            oos = new ObjectOutputStream(new FileOutputStream(file));
            oos.writeObject(object);
            oos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (oos != null) {
                try {
                    oos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void syncBookShelf(String bookId, BookSyncRecord.BookModifyType bookModifyType) {
        BookSyncRecord.updateOrCreate(getUserId(), bookId, BookSyncRecord.getTypeId(bookModifyType));
        Account account = CommonUtil.getAccount();
        if (account == null || account.getUser() == null) {
            return;
        }
        String token = account.getToken();
        String userId = account.getUser().getId();
        List<BookSyncRecord> bookSyncRecordList = BookSyncRecord.find(userId, BookSyncRecord.getTypeId(bookModifyType));
        if (bookSyncRecordList == null || bookSyncRecordList.size() == 0) {
            return;
        }
        String[] bookIds = new String[bookSyncRecordList.size()];
        for (int i = 0; i < bookSyncRecordList.size(); i++) {
            bookIds[i] = bookSyncRecordList.get(i).getBookId();
        }
        new BookSyncTask(userId, token, bookModifyType, bookIds).b();
    }

    public static void syncBookShelf(String[] noFeedBookIds, BookSyncRecord.BookModifyType bookModifyType) {
        for (String bookId : noFeedBookIds) {
            BookSyncRecord.updateOrCreate(getUserId(), bookId, BookSyncRecord.getTypeId(bookModifyType));
        }
        Account account = CommonUtil.getAccount();
        if (account == null || account.getUser() == null) {
            return;
        }
        String token = account.getToken();
        String userId = account.getUser().getId();
        List<BookSyncRecord> bookSyncRecordList = BookSyncRecord.find(userId, BookSyncRecord.getTypeId(bookModifyType));
        if (bookSyncRecordList == null || bookSyncRecordList.size() == 0) {
            return;
        }
        String[] bookIds = new String[bookSyncRecordList.size()];
        for (int i = 0; i < bookSyncRecordList.size(); i++) {
            bookIds[i] = bookSyncRecordList.get(i).getBookId();
        }
        new BookSyncTask(userId, token, bookModifyType, bookIds).b();
    }

    public static boolean getBoolPref(Context context, String key, boolean defValue) {
        if (context == null) {
            return defValue;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(key, defValue);
    }

    public static boolean saveChapter(String bookId, String tocId, String link, Chapter chapter) {
        if (link == null) {
            return false;
        }
        String name = "/ZhuiShuShenQi/Chapter" + File.separator + bookId + File.separator + tocId;
        File file = new File(CachePathConst.RootPath, name);
        try {
            if (!file.exists() && !file.mkdirs()) {
                return false;
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(file, link)));
            objectOutputStream.writeObject(chapter);
            objectOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean saveToc(String bookId, String tocId, Toc toc) {
        if (!isMounted()) {
            return false;
        }
        String name = "/ZhuiShuShenQi/Chapter" + File.separator + bookId + File.separator + tocId;
        File file = new File(CachePathConst.RootPath, name);
        try {
            if (!file.exists() && !file.mkdirs()) {
                return false;
            }
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(file, "toc")));
            objectOutputStream.writeObject(toc);
            objectOutputStream.close();
            return true;
        } catch (Exception var6_7) {
            var6_7.printStackTrace();
            return false;
        }
    }

    public static byte[] copyBytes(byte[] src, int start, int end) {
        int n4 = src.length;
        int n5 = end - start;
        int length = Math.min(n5, n4 - start);
        byte[] dst = new byte[n5];
        System.arraycopy(src, start, dst, 0, length);
        return dst;
    }

    public static int parseInt(String string2) {
        try {
            return Integer.parseInt(string2);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static Serializable loadObject(String bookId, String tocId, String name) {
        ObjectInputStream ois = null;
        try {
            if (name != null && isMounted()) {
                File dir = new File(CachePathConst.RootPath, "/ZhuiShuShenQi/Chapter" + File.separator + bookId + File.separator + tocId);
                if (dir.exists()) {
                    File file = new File(dir, name);
                    if (file.exists()) {
                        ois = new ObjectInputStream(new FileInputStream(file));
                        return (Serializable) ois.readObject();
                    }
                }
            }
        } catch (IOException | ClassNotFoundException e1) {
            e1.printStackTrace();
        } finally {
            if (ois != null) {
                try {
                    ois.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public static void putIntPref(Context context, String key, int value) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putInt(key, value);
        editor.apply();
    }

    public static void putLongPref(Context context, String key, long value) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putLong(key, value);
        editor.apply();
    }

    public static void initCipher(Context context, String cipherBookId, String cipherTocId, String cipherCheckSum) {
        CommonUtil.cipherBookId = cipherBookId;
        CommonUtil.cipherTocId = cipherTocId;
        CommonUtil.cipherCheckSum = cipherCheckSum;
        putStringPref(context, "CIPHER_BOOK_ID", cipherBookId);
        putStringPref(context, "CIPHER_TOC_ID", cipherTocId);
        putStringPref(context, "CIPHER_CHECKSUM", cipherCheckSum);
    }

    public static void putBoolPref(Context context, String key, boolean value) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putBoolean(key, value);
        editor.apply();
    }

    public static long getLongPref(Context context, String key, long defValue) {
        if (context == null) {
            return defValue;
        }
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(key, defValue);
    }

    public static ArrayList<String> getSubFileList(File file) {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] arrfile = file.listFiles();
        if (arrfile != null) {
            for (File anArrfile : arrfile) {
                arrayList.add(anArrfile.getName());
            }
        }
        return arrayList;
    }

    public static int getFeedIndex(int feedCount) {
        switch (feedCount) {
            case 10:
                return 0;
            case 20:
                return 1;
            case 100:
                return 3;
            case 200:
                return 4;
            default:
                return 2;
        }
    }

    public static int getFeedCount(int feedIndex) {
        switch (feedIndex) {
            case 0:
                return 10;
            case 1:
                return 20;
            case 3:
                return 100;
            case 4:
                return 200;
            default:
                return 50;
        }
    }

    public static boolean isMounted() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static long getFreeSpaceSize() {
        if (isMounted()) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong() / 1024;
        } else {
            return -1;
        }
    }

    public static void putStringPref(Context context, String key, String value) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putString(key, value);
        editor.apply();
    }

    public static boolean isWebReadMode(int readMode) {
        return readMode == 4 || readMode == 1 || readMode == 2;
    }

    public static String getSourceName(int mode) {
        switch (mode) {
            case 0:
                return "zhineng";
            case 1:
                return "baidu";
            case 2:
                return "tieba";
            case 3:
                return "easou";
            case 4:
                return "shenma";
            case 5:
                return "mix";
            case 6:
                return "soso";
            case 7:
                return "sogou";
            case 8:
                return "leidian";
            case 9:
                return "zhuishuvip";
            default:
                return "mix";
        }
    }

    public static boolean canDownload(int readMode) {
        return readMode == 6 || readMode == 7 || readMode == 8 || readMode == 3;
    }

    public static String getWordCount(int count) {
        if (count / 10000 > 0) {
            return "" + count / 10000 + "万";
        }
        if (count / 1000 > 0) {
            return "" + count / 1000 + "千";
        }
        if (count / 100 > 0) {
            return "" + count / 100 + "百";
        }
        return String.valueOf(count);
    }

    public static <T> T loadObject(String path, String name) {
        try {
            File file = new File(makeDir(path), name);
            if (file.exists()) {
                return (T) new ObjectInputStream(new FileInputStream(file)).readObject();
            }
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean isForceEncryptChapter() {
        return false;
    }

    private static String getUserId() {
        Account account = CommonUtil.getAccount();
        if (account != null && account.getUser() != null) {
            return account.getUser().getId();
        }
        return "";
    }

    public static void initCipherInfo(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        cipherBookId = sharedPreferences.getString("CIPHER_BOOK_ID", null);
        cipherTocId = sharedPreferences.getString("CIPHER_TOC_ID", null);
        cipherCheckSum = sharedPreferences.getString("CIPHER_CHECKSUM", null);
    }

    public static int getNetType(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).getActiveNetworkInfo();
        if (networkInfo == null) {
            return 0;
        }
        int type = networkInfo.getType();
        if (type == ConnectivityManager.TYPE_MOBILE) {
            String extraInfo = networkInfo.getExtraInfo();
            if (isBlank(extraInfo)) {
                return 0;
            }
            if (!extraInfo.toLowerCase().equals("cmnet")) {
                return 2;
            }
            return 3;
        }
        if (type == ConnectivityManager.TYPE_WIFI) {
            return 1;
        }
        return 0;
    }

    public static void subscribeBook(String bookId) {
        String pushId = getPushId(bookId);
        BookSubRecord.create(pushId);
        MiPushClient.subscribe(MyApplication.getInstance(), pushId, null);
    }

    public static String getPushId(String bookId) {
        return "book:" + bookId;
    }

    public static void unsubscribeBook(String bookId) {
        String pushId = getPushId(bookId);
        BookUnSubRecord.create(pushId);
        com.xiaomi.mipush.sdk.MiPushClient.unsubscribe(MyApplication.getInstance(), pushId, null);
    }

    public static boolean isConnectedOrConnecting(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    public static String formatContent(String content) {
        String string3 = null;
        if (content == null) return null;
        String string4 = content.replaceAll("(?m)^[ \u3000\t]+", "");
        if (string4 == null) return null;
        String string5 = string4.replaceAll("(?m)^", "\u3000\u3000");
        if (string5 != null) {
            String string6 = string5.replaceAll("&nbsp", "\u3000").replaceAll("&quot", "\"");
            string3 = null;
            if (string6 != null) {
                string3 = string6.replaceAll("^\u3000{3,}", "\u3000\u3000").replaceAll("\n\u3000{3,}", "\n\u3000\u3000");
            }
        }
        if (string3 == null) return null;
        if (string3.length() == 0) return string3;
        if (string3.charAt(-1 + string3.length()) == '\n') return string3;
        return string3 + '\n';
    }

    public static String getBody(String content) {
        if (content != null) {
            return content.replaceAll("\\n[\\s]+", "\n").trim();
        }
        return null;
    }


    public static int getLevelExp(int level) {
        if (level <= 0 || level > 999) {
            return 0;
        }
        int n2 = level + 1;
        if (n2 == 2) {
            return 20;
        }
        if (n2 <= 10) {
            return 10 + (getLevelExp(level - 1) << 1);
        }
        return 3840 + (getLevelExp(level - 1) + 50 * (n2 - 10));
    }
}
