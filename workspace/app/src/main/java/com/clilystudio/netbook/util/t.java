package com.clilystudio.netbook.util;

import android.text.format.DateUtils;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public final class t {
    private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
    private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);
    private static final SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA);

    public static int a() {
        Date date = new Date();
        return a.b(a.format(date), 0);
    }

    public static String a(long l) {
        long l2 = Math.abs(System.currentTimeMillis() - l);
        if (l2 <= 60000) {
            return "\u521a\u521a";
        }
        if (l2 <= 604800000) {
            return DateUtils.getRelativeTimeSpanString(l).toString();
        }
        if (l2 <= 2592000000L) {
            long l3 = l2 / 86400000;
            return "" + l3 + " \u5929\u524d";
        }
        if (l2 <= 31536000000L) {
            long l4 = l2 / 2592000000L;
            return "" + l4 + " \u6708\u524d";
        }
        if (l2 <= 94608000000L) {
            long l5 = l2 / 31536000000L;
            return "" + l5 + " \u5e74\u524d";
        }
        return DateUtils.getRelativeTimeSpanString(l).toString();
    }

    public static String a(Date date) {
        return a.format(date);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Date a(String string) {
        try {
            return b.parse(string);
        } catch (ParseException var2_2) {
            var2_2.printStackTrace();
            do {
                return new Date();
                break;
            } while (true);
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return new Date();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static /* varargs */ boolean a(Date date, Date... arrdate) {
        if (date == null) return false;
        if (arrdate.length == 1) {
            if (date.getTime() < t.f(arrdate[0]).getTime() || date.getTime() > t.g(arrdate[0]).getTime()) return false;
            return true;
        }
        if (arrdate.length == 2 && date.getTime() >= t.f(arrdate[0]).getTime() && date.getTime() <= t.g(arrdate[1]).getTime()) return true;
        return false;
    }

    public static String b(long l) {
        StringBuilder stringBuilder = new StringBuilder();
        long l2 = l % 86400000 / 3600000;
        long l3 = l % 3600000 / 60000;
        long l4 = l % 60000 / 1000;
        if (l2 > 0) {
            stringBuilder.append("" + l2 + ":");
        }
        if (l3 < 10) {
            stringBuilder.append("0");
        }
        stringBuilder.append("" + l3 + ":");
        if (l4 < 10) {
            stringBuilder.append("0");
        }
        stringBuilder.append(l4);
        return stringBuilder.toString();
    }

    public static String b(Date date) {
        if (date == null) {
            return null;
        }
        return new SimpleDateFormat("yyyy.MM.dd", Locale.CHINA).format(date);
    }

    public static Date b(String string) {
        String string2 = string.replace("Z", "+0000");
        return c.parse(string2, new ParsePosition(0));
    }

    public static String c(Date date) {
        if (date == null) {
            return null;
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(date);
    }

    public static String d(Date date) {
        if (date == null) {
            return null;
        }
        return new SimpleDateFormat("MM-dd hh:mm", Locale.CHINA).format(date);
    }

    public static String e(Date date) {
        if (date != null) {
            return t.a(date.getTime());
        }
        return "\u6682\u65e0";
    }

    private static Date f(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    private static Date g(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 999);
        return calendar.getTime();
    }
}
