package com.clilystudio.netbook.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.ListView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.umeng.onlineconfig.OnlineConfigAgent;

import org.json.JSONObject;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import okio.ByteString;

public class TempUtil {
    private static String cipherBookId;
    private static String cipherTocId;
    private static String cipherCheckSum;

    public static String getChapterSecurity(String string) {
        if (cipherBookId == null || cipherTocId == null || cipherCheckSum == null) {
            return null;
        }
        boolean bl = false;
        if (bl) {
            return null;
        }
        String string2 = CipherUtil.b(cipherTocId, CipherUtil.b(cipherBookId, cipherCheckSum)).substring(0, 20);
        if (!BookInfoUtil.h) {
            return CipherUtil.getNewAdvert(string2, string, MyApplication.getInstance());
        }
        BookInfoUtil.h = false;
        long l = 7200 + new Date().getTime() / 1000;
        return CipherUtil.getNewAdvertWork(string2, l, string, MyApplication.getInstance());
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
        }
        return "utf-8";
    }

    public static File makeDir(String path) {
        if (!isMounted()) {
            return null;
        }
        File file = new File(path);
        if (file.exists()) return file;
        file.mkdirs();
        return file;
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

    private static String detectImageType(String path) {
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(path);
            byte[] bytes = new byte[8];
            int read = fis.read(bytes);
            if (read == 8) {
                return getImageType(bytes);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
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
            v6.setBody(z(v41));
            v0.setChapter(v6);
            return v0;
        } catch (IOException e1) {
            e1.printStackTrace();
            return null;
        } finally {
            if (v2 != null) {
                try {
                    v2.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
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
        if (!h(readMode)) return null;
        if (readMode != 3) return sourceId + "_" + bookId;
        String[] arrstring = splitSourceId(sourceId);
        if (arrstring == null) return sourceId + "_" + bookId;
        return arrstring[0] + "_" + bookId;
    }

    public static String getUserId(Context context) {
        if (CommonUtil.getAccount() == null) {
            String string = ((WifiManager) context.getSystemService(Context.WIFI_SERVICE)).getConnectionInfo().getMacAddress();
            if (string == null) {
                string = "";
            }
            com.integralblue.httpresponsecache.compat.libcore.io.Base64.encode(string.getBytes());
        }
        return CommonUtil.getAccount().getUser().getId();
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
        if (CommonUtil.getAccount() == null || CommonUtil.getAccount().getUser() == null) {
            return;
        }
        String token = CommonUtil.getAccount().getToken();
        String userId = CommonUtil.getAccount().getUser().getId();
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
        if (CommonUtil.getAccount() == null || CommonUtil.getAccount().getUser() == null) {
            return;
        }
        String token = CommonUtil.getAccount().getToken();
        String userId = CommonUtil.getAccount().getUser().getId();
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
            if (!file.exists()) {
                file.mkdirs();
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
            if (!file.exists()) {
                file.mkdirs();
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

    private static boolean isEqualBytes(byte[] source, byte[] dest) {
        if (source == dest) {
            return true;
        }
        if (source == null || dest == null || source.length < dest.length) {
            return false;
        }
        for (int i = 0; i < dest.length; i++) {
            if (source[i] != dest[i]) {
                return false;
            }
        }
        return true;
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
        TempUtil.cipherBookId = cipherBookId;
        TempUtil.cipherTocId = cipherTocId;
        TempUtil.cipherCheckSum = cipherCheckSum;
        e(context, "CIPHER_BOOK_ID", cipherBookId);
        e(context, "CIPHER_TOC_ID", cipherTocId);
        e(context, "CIPHER_CHECKSUM", cipherCheckSum);
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

    public static int e(String string2) {
        long l2;
        block3:
        {
            try {
                l2 = Long.parseLong(string2);
                if (l2 > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (l2 >= 0) break block3;
                return 0;
            } catch (NumberFormatException var1_2) {
                return -1;
            }
        }
        return (int) l2;
    }

    public static long e() {
        if (isMounted()) {
            try {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                long l2 = (long) statFs.getBlockSize() * (long) statFs.getAvailableBlocks() / 1024;
                return l2;
            } catch (Exception var1_2) {
                var1_2.printStackTrace();
                return 0;
            }
        }
        return -1;
    }

    public static long e(Context context, String string2, long l2) {
        return context.getSharedPreferences("mistat", 0).getLong(string2, l2);
    }

    public static void e(Context context, String string2, String string3) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editor = getEditor(context);
        editor.putString(string2, string3);
        editor.apply();
    }

    public static String f(Context context, String string2, String string3) {
        return context.getSharedPreferences("mistat", 0).getString(string2, string3);
    }

    public static void f(Context context, String string2, long l2) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putLong(string2, l2);
        editor.apply();
    }

    public static boolean f(int n2) {
        return n2 == 4 || n2 == 1 || n2 == 2;
    }

    public static Bitmap.CompressFormat g(String string2) {
        String string3 = string2.toLowerCase();
        if (string3.endsWith("png") || string3.endsWith("gif")) {
            return Bitmap.CompressFormat.PNG;
        }
        if (string3.endsWith("jpg") || string3.endsWith("jpeg") || string3.endsWith("bmp") || string3.endsWith("tif")) {
            return Bitmap.CompressFormat.JPEG;
        }
        String string4 = detectImageType(string2);
        if (string4.endsWith("png") || string4.endsWith("gif")) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    public static String g(int mode) {
        switch (mode) {
            default: {
                return "mix";
            }
            case 5: {
                return "mix";
            }
            case 0: {
                return "zhineng";
            }
            case 4: {
                return "shenma";
            }
            case 1: {
                return "baidu";
            }
            case 2: {
                return "tieba";
            }
            case 6: {
                return "soso";
            }
            case 7: {
                return "sogou";
            }
            case 8: {
                return "leidian";
            }
            case 3: {
                return "easou";
            }
            case 9:
        }
        return "zhuishuvip";
    }

    private static String getImageType(byte[] bytes) {
        if (isEqualBytes(bytes, new byte[]{-1, -40, -1, -32}) || isEqualBytes(bytes, new byte[]{-1, -40, -1, -31})) {
            return "jpg";
        }
        if (isEqualBytes(bytes, new byte[]{-119, 80, 78, 71})) {
            return "png";
        }
        if (isEqualBytes(bytes, "GIF".getBytes())) {
            return "gif";
        }
        if (isEqualBytes(bytes, "BM".getBytes())) {
            return "bmp";
        }
        if (isEqualBytes(bytes, new byte[]{73, 73, 42}) || isEqualBytes(bytes, new byte[]{77, 77, 42})) {
            return "tif";
        }
        return null;
    }

    public static void g(Context context, String string2, String string3) {
        SharedPreferences.Editor editor = context.getSharedPreferences("mistat", 0).edit();
        editor.putString(string2, string3);
        editor.apply();
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static String h(String string2, String string3) {
        try {
            String string4 = ByteString.of((string2 + ":" + string3).getBytes("ISO-8859-1")).base64();
            String string5 = "Basic " + string4;
            return string5;
        } catch (UnsupportedEncodingException var2_4) {
            throw new AssertionError();
        }
    }

    public static boolean h() {
        return Build.VERSION.SDK_INT >= 14;
    }

    public static boolean h(int n2) {
        return n2 == 6 || n2 == 7 || n2 == 8 || n2 == 3;
    }

    public static int i(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        try {
            networkInfo = connectivityManager.getActiveNetworkInfo();
            if (networkInfo == null) {
                return -1;
            }
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return -1;
        }
        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
            if (networkInfo.getType() == 1) {
                return 6;
            }
            if (networkInfo.getType() == 0) {
                String string2 = networkInfo.getExtraInfo();
                if (TextUtils.isEmpty(string2)) {
                    return 1;
                }
                String string3 = string2.toLowerCase();
                if (string3.equals("cmwap")) {
                    return 0;
                }
                if (string3.equals("cmnet")) {
                    return 1;
                }
                if (string3.equals("3gwap")) {
                    return 7;
                }
                if (string3.equals("3gnet")) {
                    return 8;
                }
                if (string3.equals("uniwap")) {
                    return 2;
                }
                if (string3.equals("uninet")) {
                    return 3;
                }
                if (string3.equals("ctwap")) {
                    return 4;
                }
                if (string3.equals("ctnet") || string3.equals("#777")) {
                    return 5;
                }
                return 1;
            }
            return 1;
        }
        NetworkInfo[] arrnetworkInfo = connectivityManager.getAllNetworkInfo();
        if (arrnetworkInfo == null) {
            return -1;
        }
        int n2 = arrnetworkInfo.length;
        int n3 = 0;
        while (n3 < n2) {
            if (arrnetworkInfo[n3].getState() == NetworkInfo.State.CONNECTED && arrnetworkInfo[n3].getType() == 0) {
                String string4 = networkInfo.getExtraInfo();
                if (TextUtils.isEmpty(string4)) {
                    return 1;
                }
                String string5 = string4.toLowerCase();
                if (string5.equals("cmwap")) {
                    return 0;
                }
                if (string5.equals("cmnet")) {
                    return 1;
                }
                if (string5.equals("3gwap")) {
                    return 7;
                }
                if (string5.equals("3gnet")) {
                    return 8;
                }
                if (string5.equals("uniwap")) {
                    return 2;
                }
                if (string5.equals("uninet")) {
                    return 3;
                }
                if (string5.equals("ctwap")) {
                    return 4;
                }
                if (string5.equals("ctnet") || string5.equals("#777")) {
                    return 5;
                }
                return 1;
            }
            ++n3;
        }
        return -1;
    }

    public static String i(int n2) {
        if (n2 / 10000 > 0) {
            return "" + n2 / 10000 + "\u4e07";
        }
        if (n2 / 1000 > 0) {
            return "" + n2 / 1000 + "\u5343";
        }
        if (n2 / 100 > 0) {
            return "" + n2 / 100 + "\u767e";
        }
        return String.valueOf(n2);
    }

    public static JSONObject i(String string2, String string3) {
        JSONObject jSONObject = new JSONObject();
        try {
            String[] arrstring = string2.split(string3);
            for (String anArrstring : arrstring) {
                String[] arrstring2 = anArrstring.split("=");
                jSONObject.put(arrstring2[0], anArrstring.substring(1 + arrstring2[0].length()));
            }
        } catch (Exception var4_6) {
            var4_6.printStackTrace();
        }
        return jSONObject;
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static int j(int n2) {
        if (Build.VERSION.SDK_INT >= 11) {
            return 255 & n2 >> 8;
        }
        return 255 & n2 >> 8;
    }

    public static ArrayList<String> j(String bookId, String tocId) {
        String name = "/ZhuiShuShenQi/Chapter" + File.separator + bookId + File.separator + tocId;
        return getSubFileList(new File(CachePathConst.RootPath, name));
    }

    public static boolean j() {
        return Build.VERSION.SDK_INT == 19;
    }

    public static boolean j(Context context) {
        return i(context) != -1;
    }

    public static boolean j(Context context, String string2) {
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getPackageInfo(string2, PackageManager.GET_META_DATA);
            return true;
        } catch (PackageManager.NameNotFoundException var3_3) {
            return false;
        }
    }

    public static <T> T k(String string2, String string3) {
        Object object;
        File file;
        block4:
        {
            file = new File(makeDir(string2), string3);
            if (file.exists()) break block4;
            return null;
        }
        try {
            object = new ObjectInputStream(new FileInputStream(file)).readObject();
        } catch (IOException var4_4) {
            var4_4.printStackTrace();
            return null;
        } catch (ClassNotFoundException var3_5) {
            var3_5.printStackTrace();
            return null;
        }
        return (T) object;
    }

    public static boolean k(Context context) {
        boolean bl;
        block2:
        {
            int n2 = i(context);
            if (n2 != 0 && n2 != 1 && n2 != 7 && n2 != 8 && n2 != 9) {
                bl = false;
                if (n2 != 10) break block2;
            }
            bl = true;
        }
        return bl;
    }

    public static String l(String string2, String string3) {
        if (!TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
            if (string2.toLowerCase().compareTo(string3.toLowerCase()) <= 0) {
                return String.valueOf(string2) + "_" + string3;
            }
            return String.valueOf(string3) + "_" + string2;
        }
        return null;
    }

    public static boolean l() {
        return !"0".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.getInstance(), "force_encrypt_chapter"));
    }

    public static boolean l(Context context, String string2) {
        return getBoolPref(context, string2, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Bundle m(String string2) {
        Bundle bundle = new Bundle();
        if (string2 == null) {
            return bundle;
        }
        String[] arrstring = string2.split("&");
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            String[] arrstring2 = arrstring[n3].split("=");
            if (arrstring2.length < 2 || arrstring2[1] == null) {
                bundle.putString(URLDecoder.decode(arrstring2[0]), "");
            } else {
                bundle.putString(URLDecoder.decode(arrstring2[0]), URLDecoder.decode(arrstring2[1]));
            }
            ++n3;
        }
        return bundle;
    }

    private static String n() {
        List<BookReadRecord> list = BookReadRecord.getAll();
        StringBuilder stringBuilder = new StringBuilder();
        if (list.size() > 0) {
            for (BookReadRecord aList : list) {
                stringBuilder.append(aList.getBookId());
                stringBuilder.append("|");
            }
            stringBuilder.deleteCharAt(-1 + stringBuilder.length());
        }
        return stringBuilder.toString();
    }

    private static String getUserId() {
        if (CommonUtil.getAccount() != null && CommonUtil.getAccount().getUser() != null) {
            return CommonUtil.getAccount().getUser().getId();
        }
        return "";
    }

    public static Map<String, String> o(Context context) {
        Map<String, String> map = p(context);
        map.put("iid", n());
        return map;
    }

    public static Map<String, String> p(Context context) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("uid", getUserId(context));
        return hashMap;
    }

    public static boolean p(String string2) {
        return string2.equals("POST") || string2.equals("PUT") || string2.equals("PATCH");
    }

    public static void initCipherInfo(Context context) {
        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        cipherBookId = sharedPreferences.getString("CIPHER_BOOK_ID", null);
        cipherTocId = sharedPreferences.getString("CIPHER_TOC_ID", null);
        cipherCheckSum = sharedPreferences.getString("CIPHER_CHECKSUM", null);
    }

    public static boolean q(String string2) {
        return p(string2) || string2.equals("DELETE");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int r(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).getActiveNetworkInfo();
        if (networkInfo == null) {
            return 0;
        }
        int n2 = networkInfo.getType();
        if (n2 == 0) {
            String string2 = networkInfo.getExtraInfo();
            if (isBlank(string2)) return 0;
            if (!string2.toLowerCase().equals("cmnet")) return 2;
            return 3;
        }
        if (n2 != 1) return 0;
        return 1;
    }

    public static void r(String string2) {
        String string3 = s(string2);
        BookSubRecord.create(string3);
        com.xiaomi.mipush.sdk.MiPushClient.subscribe(MyApplication.getInstance(), string3, null);
    }

    public static boolean r(Context context, String string2) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, string2));
    }

    public static String s(String string2) {
        return "book:" + string2;
    }

    public static boolean s(Context context) {
        return r(context) == 1;
    }

    public static void t(String string2) {
        String string3 = s(string2);
        BookUnSubRecord.create(string3);
        com.xiaomi.mipush.sdk.MiPushClient.unsubscribe(MyApplication.getInstance(), string3, null);
    }

    public static boolean isConnectedOrConnecting(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    public static float u(Context context, String string2) {
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            float f2 = Float.parseFloat(string3);
            return f2;
        } catch (Exception var3_4) {
            return 0.0f;
        }
    }

    public static void u(Context context) {
        int n2 = DateTimeUtil.getTodayValue();
        if (n2 != getIntPref(context, "key_all_post_open_by_day", 0)) {
            putIntPref(context, "key_all_post_open_by_day", n2);
        }
    }

    public static float v(Context context, String string2) {
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            float f2 = Float.parseFloat(string3);
            return f2;
        } catch (Exception var3_4) {
            return 1.0f;
        }
    }

    public static void v(Context context) {
        int n2 = DateTimeUtil.getTodayValue();
        if (n2 != getIntPref(context, "key_audiobook_listen_count", 0)) {
            putIntPref(context, "key_audiobook_listen_count", n2);
        }
    }

    public static boolean w(Context context) {
        return true;
    }

    public static boolean w(Context context, String string2) {
        float f2;
        String string3 = OnlineConfigAgent.getInstance().getConfigParams(context, string2);
        try {
            f2 = Float.parseFloat(string3);
        } catch (Exception var3_4) {
            return true;
        }
        return Math.random() < (double) f2;
    }

    public static boolean x(Context context, String string2) {
        return context.getSharedPreferences("mistat", 0).contains(string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String y(String string2) {
        String string3;
        if (string2 == null) return null;
        String string4 = string2.replaceAll("(?m)^[ \u3000\t]+", "");
        if (string4 == null) return null;
        String string5 = string4.replaceAll("(?m)^", "\u3000\u3000");
        if (string5 != null) {
            String string6 = string5.replaceAll("&nbsp", "\u3000").replaceAll("&quot", "\"");
            string3 = null;
            if (string6 != null) {
                string3 = string6.replaceAll("^\u3000{3,}", "\u3000\u3000").replaceAll("\n\u3000{3,}", "\n\u3000\u3000");
            }
        } else {
            string3 = string5;
        }
        if (string3 == null) return string3;
        if (string3.length() == 0) return string3;
        if (string3.charAt(-1 + string3.length()) == '\n') return string3;
        return string3 + '\n';
    }

    public static boolean y(Context context) {
        return "1".equals(OnlineConfigAgent.getInstance().getConfigParams(context, "show_remove_ad"));
    }

    public static String z(String string2) {
        if (string2 != null) {
            return string2.replaceAll("\\n[\\s]+", "\n").trim();
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
