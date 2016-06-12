package com.clilystudio.netbook.hpay100.web;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.y;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;

public class HPayWebView extends WebView {

    public static int a = 0;
    private boolean b;
    private int c;
    private m e;
    private Activity f;
    private HPaySMS d = null;
    public HPayWebView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static m a(HPayWebView HPayWebView1) {
        return HPayWebView1.e;
    }

    static void a(HPayWebView HPayWebView1, int int2) {
        HPayWebView1.c = int2;
    }

    static void a(HPayWebView HPayWebView1, String String2) {
        if (HPayWebView1.d != null && HPayWebView1.d.mJsUrlHashMap != null && !android.text.TextUtils.isEmpty((CharSequence) String2) && !String2.startsWith("javascript") && String2.startsWith("http")) {
            Object Object3;

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("loadjsurl:").append(String2).toString());
            Object3 = com.clilystudio.netbook.hpay100.c.j.a(String2);
            if (TextUtils.isEmpty((CharSequence) Object3))
                Object3 = com.clilystudio.netbook.hpay100.c.j.b(String2);
            if (!android.text.TextUtils.isEmpty((CharSequence) Object3)) {
                Object Object4 = (String) HPayWebView1.d.mJsUrlHashMap.get(Object3);

                if (!android.text.TextUtils.isEmpty((CharSequence) Object4)) {
                    Thread Thread5 = new Thread((Runnable) new k(HPayWebView1, (String) Object4));

                    Thread5.setName("thread_load_js");
                    Thread5.start();
                    return;
                }
            }
        }
    }

    static void a(HPayWebView HPayWebView1, boolean boolean2) {
        HPayWebView1.b = boolean2;
    }

    static int b(HPayWebView HPayWebView1) {
        return HPayWebView1.c;
    }

    private static String b(String String1) {
        byte[] byte_1darray4;
        ByteArrayOutputStream ByteArrayOutputStream5;
        int int6;

        try {
            InputStream InputStream3 = new URL(String1).openStream();

            byte_1darray4 = new byte[1024];
            ByteArrayOutputStream5 = new ByteArrayOutputStream();
            for (; ; ) {
                int6 = InputStream3.read(byte_1darray4);
                break;
            }
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return "";
        }
        if (int6 > 0) {
            try {
                label_13:
                ByteArrayOutputStream5.write(byte_1darray4, 0, int6);
                break label_13;
            } catch (Exception Exception8) {
                Exception8.printStackTrace();
                return "";
            }
        } else {
            String String7;

            try {
                String7 = ByteArrayOutputStream5.toString();
            } catch (Exception Exception9) {
                Exception9.printStackTrace();
                return "";
            }
            return String7;
        }
    }

    static void b(HPayWebView HPayWebView1, String String2) {
        HPayWebView1.a(String2);
    }

    static boolean c(HPayWebView HPayWebView1) {
        return HPayWebView1.b;
    }

    private void a(String String1) {
        synchronized (this) {
            Object Object3 = b(String1);

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("jsdata:").append((String) Object3).toString());
            if (!android.text.TextUtils.isEmpty((CharSequence) Object3) && f != null)
                f.runOnUiThread((Runnable) new l(this, (String) Object3));
        }
    }

    public final void a(Activity Activity1, Handler Handler2, HPaySMS HPaySMS3, String String4, y y5, m m6) {
        WebSettings WebSettings7;

        e = m6;
        b = false;
        f = Activity1;
        d = HPaySMS3;
        c = 0;
        WebSettings7 = getSettings();
        WebSettings7.setJavaScriptEnabled(true);
        WebSettings7.setSupportZoom(false);
        WebSettings7.setCacheMode(2);
        WebSettings7.setSavePassword(false);
        WebSettings7.setSaveFormData(false);
        WebSettings7.setJavaScriptCanOpenWindowsAutomatically(true);
        WebSettings7.setBuiltInZoomControls(false);
        addJavascriptInterface(new a(Activity1, this, Handler2, y5, HPaySMS3, String4), "HPayJS");
        setScrollBarStyle(0);
        setVerticalScrollBarEnabled(true);
        setHorizontalScrollBarEnabled(false);
        setHorizontalFadingEdgeEnabled(true);
        setWebViewClient((WebViewClient) new i(this));
        setWebChromeClient((WebChromeClient) new j(this));
    }

    public void loadUrl(String String1) {
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("loadurl url:").append(String1).toString());
        super.loadUrl(String1);
        b = false;
    }

    protected void onScrollChanged(int int1, int int2, int int3, int int4) {
        super.onScrollChanged(int1, int2, int3, int4);
    }

    public void postUrl(String String1, byte[] byte_1darray2) {
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("postUrl url:").append(String1).toString());
        super.postUrl(String1, byte_1darray2);
        b = false;
    }

    public void reload() {
        super.reload();
        b = false;
    }
}
