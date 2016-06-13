package com.clilystudio.netbook.api;

import android.text.TextUtils;

import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.DnsCacheRecord;
import com.clilystudio.netbook.exception.DnsParseFailedException;
import com.github.kevinsawicki.http.HttpRequest;

import java.net.URL;

public final class e {
    private static boolean a;
    private static c b;

    static {
        b = c.a();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static void a(HttpRequest httpRequest) {
        URL uRL;
        String string;
        String string2;
        block8:
        {
            int n;
            String string3;
            try {
                uRL = httpRequest.a();
                string = uRL.getHost();
                DnsCacheRecord dnsCacheRecord = (DnsCacheRecord) new Select().from(DnsCacheRecord.class).where("host = ?", string).executeSingle();
                if (dnsCacheRecord != null && dnsCacheRecord.isExpired()) {
                    dnsCacheRecord.delete();
                    string2 = null;
                } else if (dnsCacheRecord == null) {
                    string2 = null;
                } else {
                    string2 = dnsCacheRecord.getIp();
                }
                if (string2 != null) break block8;
                string3 = HttpRequest.a(String.format("http://%s/d?dn=%s&ttl=1", "119.29.29.29", string)).d();
                if (string3 == null) {
                    throw new DnsParseFailedException(string3 + " parse failed");
                }
            } catch (Exception var1_6) {
                var1_6.printStackTrace();
                return;
            }
            String[] arrstring = string3.split(",");
            String[] arrstring2 = arrstring[0].split(";");
            d d2 = new d(arrstring2[0], n = Integer.parseInt(arrstring[1]));
            string2 = d2.a();
            if (TextUtils.isEmpty(string2)) return;
            b.a(d2, string);
        }
        httpRequest.a(new URL(uRL.toString().replace(string, string2)));
        httpRequest.a("Host", string);
    }

    public static void a(boolean bl) {
        a = bl;
    }

    public static boolean a() {
        return a;
    }
}
