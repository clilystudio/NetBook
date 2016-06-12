package com.clilystudio.netbook.util;

import android.content.Context;
import android.util.Base64;

import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CipherUtil {

    static {
        System.loadLibrary("test");
        "0123456789ABCDEF".toCharArray();
    }

    public static String a(String String1, String String2) {
        String String11;

        try {
            byte[] byte_1darray4 = Base64.decode(String1.getBytes(), 0);
            Object Object5 = new SecretKeySpec(byte_1darray4, 0, byte_1darray4.length, "AES");
            byte[] byte_1darray6 = Base64.decode(String2, 0);
            byte[] byte_1darray7 = com.clilystudio.netbook.hpay100.a.a.a(byte_1darray6, 0, 16);
            byte[] byte_1darray8 = com.clilystudio.netbook.hpay100.a.a.a(byte_1darray6, 16, byte_1darray6.length);
            Object Object9 = new IvParameterSpec(byte_1darray7);
            Cipher Cipher10 = Cipher.getInstance("AES/CBC/PKCS5Padding");

            Cipher10.init(2, (Key) Object5, (AlgorithmParameterSpec) Object9);
            String11 = new String(Cipher10.doFinal(byte_1darray8));
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return null;
        }
        return String11;
    }

    private static Key a(String String1) {
        Object Object4;

        try {
            byte[] byte_1darray3 = String1.getBytes();

            Object4 = new SecretKeySpec(byte_1darray3, 0, byte_1darray3.length, "AES");
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return (Key) Object4;
    }

    public static String b(String String1, String String2) {
        String String10;

        try {
            Key Key4 = a(String1);
            byte[] byte_1darray5 = Base64.decode(String2, 0);
            byte[] byte_1darray6 = com.clilystudio.netbook.hpay100.a.a.a(byte_1darray5, 0, 16);
            byte[] byte_1darray7 = com.clilystudio.netbook.hpay100.a.a.a(byte_1darray5, 16, byte_1darray5.length);
            Object Object8 = new IvParameterSpec(byte_1darray6);
            Cipher Cipher9 = Cipher.getInstance("AES/CBC/PKCS5Padding");

            Cipher9.init(2, Key4, (AlgorithmParameterSpec) Object8);
            String10 = new String(Cipher9.doFinal(byte_1darray7));
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return null;
        }
        return String10;
    }

    public static native String getNewAdvert(String String1, String String2, Context Context3);

    public static native String getNewAdvertWork(String String1, long long2, String String4, Context Context5);
}
