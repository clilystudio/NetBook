package com.clilystudio.netbook.umeng.update.net;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

final class q implements Runnable {

    private String[] a;     // final access specifier removed
    private boolean b;     // final access specifier removed
    private Map c;     // final access specifier removed
    q(p p1, String[] String_1darray2, boolean boolean3, Map Map4) {
        a = String_1darray2;
        b = boolean3;
        c = Map4;
    }

    public final void run() {
        int int1 = new Random().nextInt(1000);

        if (a == null)
            u.a.b.a(p.a(), new StringBuilder(String.valueOf(int1)).append("service report: urls is null").toString());
        else {
            String[] String_1darray2 = a;
            int int3 = String_1darray2.length;
            int int4;

            for (int4 = 0; int4 < int3; ++int4) {
                String String5 = String_1darray2[int4];
                String String6 = g.a();
                String String7 = String6.split(" ")[0];
                String String8 = String6.split(" ")[1];
                long long9 = System.currentTimeMillis();
                StringBuilder StringBuilder11 = new StringBuilder(String5);

                StringBuilder11.append("&data=").append(String7);
                StringBuilder11.append("&time=").append(String8);
                StringBuilder11.append("&ts=").append(long9);
                if (b)
                    StringBuilder11.append("&action_type=1");
                else
                    StringBuilder11.append("&action_type=-2");
                if (c != null) {
                    Iterator Iterator22 = c.keySet().iterator();

                    while (Iterator22.hasNext()) {
                        String String23 = (String) Iterator22.next();

                        StringBuilder11.append("&").append(String23).append("=").append((String) c.get(String23));
                    }
                }
                try {
                    Object Object18;
                    Object Object19;
                    HttpResponse HttpResponse20;
                    int int21;

                    u.a.b.a(p.a(), new StringBuilder(String.valueOf(int1)).append(": service report:\tget: ").append(StringBuilder11.toString()).toString());
                    Object18 = new HttpGet(StringBuilder11.toString());
                    Object19 = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout((HttpParams) Object19, 10000);
                    HttpConnectionParams.setSoTimeout((HttpParams) Object19, 20000);
                    HttpResponse20 = ((HttpClient) new DefaultHttpClient((HttpParams) Object19)).execute((HttpUriRequest) Object18);
                    u.a.b.a(p.a(), new StringBuilder(String.valueOf(int1)).append(": service report:status code:  ").append(HttpResponse20.getStatusLine().getStatusCode()).toString());
                    int21 = HttpResponse20.getStatusLine().getStatusCode();
                } catch (ClientProtocolException ClientProtocolException17) {
                    u.a.b.c(p.a(), new StringBuilder(String.valueOf(int1)).append(": service report:\tClientProtocolException,Failed to send message.").append(String5).toString(), (Exception) ClientProtocolException17);
                } catch (IOException IOException16) {
                    u.a.b.c(p.a(), new StringBuilder(String.valueOf(int1)).append(": service report:\tIOException,Failed to send message.").append(String5).toString(), (Exception) IOException16);
                }
            }
        }
    }
}
