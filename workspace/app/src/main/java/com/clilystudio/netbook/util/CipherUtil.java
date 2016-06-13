package com.clilystudio.netbook.util;

import android.content.Context;
import android.util.Base64;

import com.clilystudio.netbook.hpay100.a.a;

import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CipherUtil {
    static {
        System.loadLibrary("test");
        "0123456789ABCDEF".toCharArray();
    }

    public static String a(String string, String string2) {
        try {
            byte[] arrby = Base64.decode(string.getBytes(), 0);
            SecretKeySpec secretKeySpec = new SecretKeySpec(arrby, 0, arrby.length, "AES");
            byte[] arrby2 = Base64.decode(string2, 0);
            byte[] arrby3 = a.a(arrby2, 0, 16);
            byte[] arrby4 = a.a(arrby2, 16, arrby2.length);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(arrby3);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, (Key) secretKeySpec, ivParameterSpec);
            String string3 = new String(cipher.doFinal(arrby4));
            return string3;
        } catch (Exception var2_10) {
            var2_10.printStackTrace();
            return null;
        }
    }

    private static Key a(String string) {
        try {
            byte[] arrby = string.getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(arrby, 0, arrby.length, "AES");
            return secretKeySpec;
        } catch (Exception var1_3) {
            var1_3.printStackTrace();
            return null;
        }
    }

    public static String b(String string, String string2) {
        try {
            Key key = CipherUtil.a(string);
            byte[] arrby = Base64.decode(string2, 0);
            byte[] arrby2 = a.a(arrby, 0, 16);
            byte[] arrby3 = a.a(arrby, 16, arrby.length);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(arrby2);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, key, ivParameterSpec);
            String string3 = new String(cipher.doFinal(arrby3));
            return string3;
        } catch (Exception var2_9) {
            var2_9.printStackTrace();
            return null;
        }
    }

    public static native String getNewAdvert(String var0, String var1, Context var2);

    public static native String getNewAdvertWork(String var0, long var1, String var3, Context var4);
}
