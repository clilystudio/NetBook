package com.clilystudio.netbook.pay.a;

import android.text.TextUtils;

public final class e {
    private String a;
    private String b;
    private String c;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public e(String string) {
        if (TextUtils.isEmpty(string)) {
            return;
        }
        String[] arrstring = string.split(";");
        int n = arrstring.length;
        int n2 = 0;
        while (n2 < n) {
            String string2 = arrstring[n2];
            if (string2.startsWith("resultStatus")) {
                this.a = e.a(string2, "resultStatus");
            }
            if (string2.startsWith("result")) {
                this.b = e.a(string2, "result");
            }
            if (string2.startsWith("memo")) {
                this.c = e.a(string2, "memo");
            }
            ++n2;
        }
    }

    private static String a(String string, String string2) {
        String string3 = string2 + "={";
        return string.substring(string.indexOf(string3) + string3.length(), string.lastIndexOf("}"));
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String toString() {
        return "resultStatus={" + this.a + "};memo={" + this.c + "};result={" + this.b + "}";
    }
}
