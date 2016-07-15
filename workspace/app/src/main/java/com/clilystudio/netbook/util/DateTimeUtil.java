package com.clilystudio.netbook.util;

import android.text.format.DateUtils;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public final class DateTimeUtil {
    private static final SimpleDateFormat mShortFormatter = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
    private static final SimpleDateFormat mNormalFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA);
    private static final SimpleDateFormat mLongFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA);

    public static int getTodayValue() {
        return TempUtil.b(mShortFormatter.format(new Date()), 0);
    }

    public static String formatTime(long timeMillis) {
        long l2 = Math.abs(System.currentTimeMillis() - timeMillis);
        if (l2 <= 60000) {
            return "刚刚";
        }
        if (l2 <= 604800000) {
            return DateUtils.getRelativeTimeSpanString(timeMillis).toString();
        }
        if (l2 <= 2592000000L) {
            long l3 = l2 / 86400000;
            return "" + l3 + " 天前";
        }
        if (l2 <= 31536000000L) {
            long l4 = l2 / 2592000000L;
            return "" + l4 + " 月前";
        }
        if (l2 <= 94608000000L) {
            long l5 = l2 / 31536000000L;
            return "" + l5 + " 年前";
        }
        return DateUtils.getRelativeTimeSpanString(timeMillis).toString();
    }

    public static String formatShortDate(Date date) {
        return mShortFormatter.format(date);
    }

    public static Date getDateByString(String string) {
        try {
            return mNormalFormatter.parse(string);
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
        }
        return new Date();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean a(Date date, Date... arrdate) {
        if (date == null) return false;
        if (arrdate.length == 1) {
            return !(date.getTime() < DateTimeUtil.getDayBegin(arrdate[0]).getTime() || date.getTime() > DateTimeUtil.getDayEnd(arrdate[0]).getTime());
        }
        return arrdate.length == 2 && date.getTime() >= DateTimeUtil.getDayBegin(arrdate[0]).getTime() && date.getTime() <= DateTimeUtil.getDayEnd(arrdate[1]).getTime();
    }

    public static String b(long l) {
        StringBuilder stringBuilder = new StringBuilder();
        long l2 = l % 86400000 / 3600000;
        long l3 = l % 3600000 / 60000;
        long l4 = l % 60000 / 1000;
        if (l2 > 0) {
            stringBuilder.append("").append(l2).append(":");
        }
        if (l3 < 10) {
            stringBuilder.append("0");
        }
        stringBuilder.append("").append(l3).append(":");
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
        return mLongFormatter.parse(string2, new ParsePosition(0));
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
            return DateTimeUtil.formatTime(date.getTime());
        }
        return "暂无";
    }

    private static Date getDayBegin(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    private static Date getDayEnd(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);
        return calendar.getTime();
    }
}
