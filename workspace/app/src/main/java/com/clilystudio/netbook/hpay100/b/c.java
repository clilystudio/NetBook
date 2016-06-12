package com.clilystudio.netbook.hpay100.b;

import android.content.Context;
import android.support.v7.app.f;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c {

    private DefaultHttpClient a;

    private c(Context Context1, int int2, int int3, boolean boolean4, boolean boolean5) {
        Object Object6 = new BasicHttpParams();

        HttpConnectionParams.setConnectionTimeout((HttpParams) Object6, int2);
        HttpConnectionParams.setSoTimeout((HttpParams) Object6, int3);
        ((HttpParams) Object6).setBooleanParameter("http.protocol.handle-redirects", false);
        a = new DefaultHttpClient((HttpParams) Object6);
        if (boolean5 && com.clilystudio.netbook.hpay100.a.a.k(Context1)) {
            HttpHost HttpHost8 = new HttpHost("10.0.0.172", 80);

            a.getParams().setParameter("http.route.default-proxy", HttpHost8);
        }
    }

    public static c a(Context Context1) {
        return new c(Context1, 20000, 30000, false, false);
    }

    public static c a(Context Context1, int int2, int int3, boolean boolean4) {
        return new c(Context1, int2, int3, false, boolean4);
    }

    public static d a(String String1, Map Map2, Map Map3) {
        Object Object4 = new DefaultHttpClient();
        Object Object5;
        Iterator Iterator6;
        Object Object7;
        Object Object9;
        Object Object10;

        if (Map3 == null)
            Object9 = new HashMap();
        Object5 = new ArrayList();
        Iterator6 = ((Map) Object9).keySet().iterator();
        while (Iterator6.hasNext()) {
            String String8 = (String) Iterator6.next();

            ((List) Object5).add(new BasicNameValuePair(String8, (String) ((Map) Object9).get(String8)));
        }
        Object7 = new HttpPost(String1);
        if (Map2 == null)
            Object10 = new HashMap();
        b((Map) Object10);
        if (Object10 != null)
            ((HttpPost) Object7).setHeaders(a((Map) Object10));
        ((HttpPost) Object7).setEntity((HttpEntity) new UrlEncodedFormEntity((List) Object5, "utf-8"));
        return a((AbstractHttpClient) Object4, (HttpUriRequest) Object7);
    }

    public static d a(AbstractHttpClient AbstractHttpClient1, HttpUriRequest HttpUriRequest2) {
        HttpResponse HttpResponse3;
        d d4;

        AbstractHttpClient1.addResponseInterceptor((HttpResponseInterceptor) new e());
        HttpResponse3 = AbstractHttpClient1.execute(HttpUriRequest2);
        d4 = new d();
        if (HttpResponse3 != null) {
            int int5 = HttpResponse3.getStatusLine().getStatusCode();

            if (200 == int5 || 301 == int5 || 302 == int5) {
                List List6;
                StringBuffer StringBuffer7;
                Iterator Iterator8;

                d4.a(HttpResponse3.getAllHeaders());
                List6 = AbstractHttpClient1.getCookieStore().getCookies();
                StringBuffer7 = new StringBuffer();
                Iterator8 = List6.iterator();
                while (Iterator8.hasNext()) {
                    Cookie Cookie9 = (Cookie) Iterator8.next();

                    StringBuffer7.append(Cookie9.getName()).append("=").append(Cookie9.getValue()).append(";");
                }
                if (StringBuffer7.length() > 0)
                    StringBuffer7.deleteCharAt(-1 + StringBuffer7.length());
                a(AbstractHttpClient1.getCookieStore().getCookies());
                d4.a(HttpResponse3.getEntity());
                if (301 == int5 || 302 == int5) {
                    HashMap HashMap12 = d4.a();

                    if (HashMap12 != null && HashMap12.get("Location") != null)
                        ((Header) HashMap12.get("Location")).getValue();
                }
                return d4;
            }
        }
        return null;
    }

    public static String a(String String1, Map Map2) {
        String String3 = "?";
        Iterator Iterator4;
        String String5;
        String String6;

        if (!android.text.TextUtils.isEmpty((CharSequence) String1) && String1.indexOf("?") > 0)
            String3 = "&";
        Iterator4 = Map2.keySet().iterator();
        for (String5 = String3; Iterator4.hasNext(); String5 = new StringBuilder(String.valueOf(String5)).append(String6).append("=").append((String) Map2.get(String6)).append("&").toString())
            String6 = (String) Iterator4.next();
        return String5.substring(0, -1 + String5.length());
    }

    public static Map a(List List1) {
        Object Object2 = new HashMap(List1.size());
        Iterator Iterator3 = List1.iterator();

        while (Iterator3.hasNext()) {
            Cookie Cookie4 = (Cookie) Iterator3.next();

            ((Map) Object2).put(Cookie4.getName(), Cookie4.getValue());
        }
        return (Map) Object2;
    }

    public static Header[] a(Map Map1) {
        Object[] Object_1darray2 = new BasicHeader[Map1.size()];
        Iterator Iterator3 = Map1.keySet().iterator();
        int int4;

        for (int4 = 0; Iterator3.hasNext(); ++int4) {
            String String5 = (String) Iterator3.next();

            Object_1darray2[int4] = new BasicHeader(String5, (String) Map1.get(String5));
        }
        return (Header[]) Object_1darray2;
    }

    public static void b(Map Map1) {
        Map1.put("Accept-Encoding", "gzip");
    }

    public final d a(Context Context1, String String2, Map Map3, Map Map4, String String5, boolean boolean6) {
        Object Object7 = a;
        StringBuilder StringBuilder8;
        String String9;
        Object Object10;
        Object Object11;
        Object Object12;

        if (Map4 == null)
            Object12 = new HashMap();
        if (boolean6)
            f.a(Context1, (Map) Object12);
        StringBuilder8 = new StringBuilder(String.valueOf(String2));
        if (Object12 == null)
            String9 = "";
        else
            String9 = a(String2, (Map) Object12);
        Object10 = new HttpGet(StringBuilder8.append(String9).toString());
        if (0 == 0)
            Object11 = new HashMap();
        else
            Object11 = null;
        b((Map) Object11);
        if (Object11 != null)
            ((HttpGet) Object10).setHeaders(a((Map) Object11));
        return a((AbstractHttpClient) Object7, (HttpUriRequest) Object10);
    }

    public final void a() {
        if (a != null)
            a.getConnectionManager().shutdown();
    }
}
