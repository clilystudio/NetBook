package com.clilystudio.netbook.api;

import android.text.TextUtils;

import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.DnsCacheRecord;
import com.clilystudio.netbook.exception.DnsParseFailedException;
import com.github.kevinsawicki.http.HttpRequest;

import java.net.MalformedURLException;
import java.net.URL;

public final class e {
    private static boolean a;
    private static c b;

    static {
        b = c.a();
    }

    public static void a(HttpRequest httpRequest) {
        String string2;
        String string3;
        URL uRL = httpRequest.getConnection().getURL();
        String string = uRL.getHost();
        DnsCacheRecord dnsCacheRecord = new Select().from(DnsCacheRecord.class).where("host = ?", string).executeSingle();
        if (dnsCacheRecord != null && dnsCacheRecord.isExpired()) {
            dnsCacheRecord.delete();
            string2 = null;
        } else if (dnsCacheRecord == null) {
            string2 = null;
        } else {
            string2 = dnsCacheRecord.getIp();
        }
        if (string2 != null) {
            try {
                httpRequest.post(new URL(uRL.toString().replace(string, string2)));
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            httpRequest.header("Host", string);
            return;
        }
        string3 = HttpRequest.get(String.format("http://%s/d?dn=%s&ttl=1", "119.29.29.29", string)).body();
        if (string3 == null) {
            throw new DnsParseFailedException(string3 + " parse failed");
        }
        String[] arrstring = string3.split(",");
        String[] arrstring2 = arrstring[0].split(";");
        d d2 = new d(arrstring2[0], Integer.parseInt(arrstring[1]));
        string2 = d2.a();
        if (!TextUtils.isEmpty(string2)) {
            b.a(d2, string);
            try {
                httpRequest.post(new URL(uRL.toString().replace(string, string2)));
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            httpRequest.header("Host", string);
        }
    }

    public static void a(boolean bl) {
        a = bl;
    }

    public static boolean a() {
        return a;
    }
}
