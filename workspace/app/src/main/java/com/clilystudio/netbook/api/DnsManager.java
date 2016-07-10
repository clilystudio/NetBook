package com.clilystudio.netbook.api;

import android.text.TextUtils;

import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.DnsCacheRecord;
import com.clilystudio.netbook.exception.DnsParseFailedException;
import com.github.kevinsawicki.http.HttpRequest;

import java.net.MalformedURLException;
import java.net.URL;

public final class DnsManager {
    private static boolean mUseDns;
    private static c b = c.a();

    public static HttpRequest a2(HttpRequest httpRequest) {
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
            HttpRequest httpRequest2 = null;
            try {
                httpRequest2 = new HttpRequest(new URL(uRL.toString().replace(string, string2)), httpRequest.method());
                httpRequest2.header("Host", string);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            return httpRequest2;
        }
        string3 = HttpRequest.get(String.format("http://119.29.29.29/d?dn=%s&ttl=1", string)).body();
        if (string3 == null) {
            throw new DnsParseFailedException(string3 + " parse failed");
        }
        String[] arrstring = string3.split(",");
        String[] arrstring2 = arrstring[0].split(";");
        DnsRecord d2 = new DnsRecord(arrstring2[0], Integer.parseInt(arrstring[1]));
        string2 = d2.getIp();
        HttpRequest httpRequest2 = null;
        if (!TextUtils.isEmpty(string2)) {
            b.a(d2, string);
             try {
                httpRequest2 = new HttpRequest(new URL(uRL.toString().replace(string, string2)), httpRequest.method());
                httpRequest2.header("Host", string);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
        return httpRequest2;
    }

    public static void a(boolean bl) {
        mUseDns = bl;
    }

    public static boolean isUseDns() {
        return mUseDns;
    }
}
