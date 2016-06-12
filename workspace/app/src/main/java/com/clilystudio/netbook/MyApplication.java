package com.clilystudio.netbook;

import android.content.Context;
import android.support.multidex.MultiDexApplication;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.reader.Reader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class MyApplication extends MultiDexApplication {

    private static MyApplication b = null;
    public UGCNewCollection a;
    private Reader c;
    private BookInfo d;
    private int e;
    private List g;
    private Map h;
    private String f = null;
    private List i = null;
    private List j = null;
    private List k = null;

    public static MyApplication a() {
        return b;
    }

    static void a(MyApplication MyApplication1) {
        File File2 = new File(MyApplication1.getCacheDir(), "http2");

        try {
            com.integralblue.httpresponsecache.a.a(File2, 209715200L);
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return;
        }
    }

    private void a(Properties Properties1) {
        b.a((Context) this).a(Properties1);
    }

    public final String a(String String1) {
        return b.a((Context) this).a().getProperty(String1);
    }

    public final void a(int int1) {
        e = int1;
    }

    public final void a(Account Account1) {
        a((Properties) new MyApplication$3(this, Account1));
        a((Properties) new MyApplication$4(this, Account1.getUser()));
    }

    public final void a(BookInfo BookInfo1) {
        d = BookInfo1;
    }

    public final void a(Reader Reader1) {
        c = Reader1;
    }

    public final void a(String String1, String String2) {
        b.a((Context) this).a(String1, String2);
    }

    public final transient void a(String[] String_1darray1) {
        b.a((Context) this).a(String_1darray1);
    }

    public final boolean a(Serializable Serializable1, String String2) {
        Object Object3 = null;
        ObjectOutputStream ObjectOutputStream5;
        Object Object6;
        boolean boolean10;

        try {
            Object Object13 = openFileOutput(String2, 0);
        } catch (Exception Exception9) {
            ObjectOutputStream5 = null;
            try {
                Exception9.printStackTrace();
            } finally {
                Object6 = Object3;
                if (ObjectOutputStream5 != null) {
                    try {
                        ObjectOutputStream5.close();
                    } catch (Exception Exception8) {
                    }
                }
                if (Object6 != null) {
                    try {
                        ((FileOutputStream) Object6).close();
                    } catch (Exception Exception7) {
                    }
                }
                throw Object4;
            }
            if (ObjectOutputStream5 != null) {
                try {
                    ObjectOutputStream5.close();
                } catch (Exception Exception12) {
                    boolean10 = false;
                    if (Object3 != null) {
                        try {
                            ((FileOutputStream) Object3).close();
                        } catch (Exception Exception11) {
                            return false;
                        }
                        return false;
                    }
                }
            }
        } finally {
            ObjectOutputStream5 = null;
            Object6 = null;
            if (ObjectOutputStream5 != null)
                ObjectOutputStream5.close();
            if (Object6 != null)
                ((FileOutputStream) Object6).close();
            throw Object4;
        }
        return boolean10;
    }

    public final Reader b() {
        return c;
    }

    public final Serializable b(String String1) {
        boolean boolean2 = getFileStreamPath(String1).exists();
        int int3 = 0;
        Serializable Serializable20;

        if (boolean2)
            int3 = 1;
        if (int3 == 0)
            Serializable20 = null;
        else {
            ObjectInputStream ObjectInputStream5;
            Object Object6;
            ObjectInputStream ObjectInputStream14;
            Object Object15;
            Object Object18;

            try {
                Object18 = openFileInput(String1);
            } catch (Exception Exception9) {
                ObjectInputStream5 = null;
                Object6 = null;
                try {
                    Exception9.printStackTrace();
                    if (Exception9 instanceof InvalidClassException)
                        getFileStreamPath(String1).delete();
                } finally {
                    if (ObjectInputStream5 != null) {
                        try {
                            ObjectInputStream5.close();
                        } catch (Exception Exception8) {
                        }
                    }
                    if (Object6 != null) {
                        try {
                            ((FileInputStream) Object6).close();
                        } catch (Exception Exception7) {
                        }
                    }
                    throw Object4;
                }
                if (ObjectInputStream5 != null) {
                    try {
                        ObjectInputStream5.close();
                    } catch (Exception Exception11) {
                    }
                }
                if (Object6 != null) {
                    try {
                        ((FileInputStream) Object6).close();
                    } catch (Exception Exception10) {
                    }
                }
                return null;
            } catch (FileNotFoundException FileNotFoundException13) {
                ObjectInputStream14 = null;
                Object15 = null;
                if (ObjectInputStream14 != null) {
                    try {
                        ObjectInputStream14.close();
                    } catch (Exception Exception17) {
                    }
                }
                if (Object15 != null) {
                    try {
                        ((FileInputStream) Object15).close();
                    } catch (Exception Exception16) {
                    }
                }
                return null;
            } finally {
                ObjectInputStream5 = null;
                Object6 = null;
                if (ObjectInputStream5 != null)
                    ObjectInputStream5.close();
                if (Object6 != null)
                    ((FileInputStream) Object6).close();
                throw Object4;
            }
            Object6 = Object18;
            try {
                ObjectInputStream5 = new ObjectInputStream((InputStream) Object6);
            } catch (Exception Exception24) {
                ObjectInputStream5 = null;
                Exception24.printStackTrace();
                if (Exception24 instanceof InvalidClassException)
                    getFileStreamPath(String1).delete();
                if (ObjectInputStream5 != null)
                    ObjectInputStream5.close();
                if (Object6 != null)
                    ((FileInputStream) Object6).close();
                return null;
            } catch (FileNotFoundException FileNotFoundException23) {
                Object15 = Object6;
                ObjectInputStream14 = null;
                if (ObjectInputStream14 != null)
                    ObjectInputStream14.close();
                if (Object15 != null)
                    ((FileInputStream) Object15).close();
                return null;
            } finally {
                ObjectInputStream5 = null;
                if (ObjectInputStream5 != null)
                    ObjectInputStream5.close();
                if (Object6 != null)
                    ((FileInputStream) Object6).close();
                throw Object4;
            }
            try {
                Serializable20 = (Serializable) ObjectInputStream5.readObject();
            } catch (Exception Exception25) {
                Exception25.printStackTrace();
                if (Exception25 instanceof InvalidClassException)
                    getFileStreamPath(String1).delete();
                if (ObjectInputStream5 != null)
                    ObjectInputStream5.close();
                if (Object6 != null)
                    ((FileInputStream) Object6).close();
                return null;
            } catch (FileNotFoundException FileNotFoundException19) {
                ObjectInputStream14 = ObjectInputStream5;
                Object15 = Object6;
                if (ObjectInputStream14 != null)
                    ObjectInputStream14.close();
                if (Object15 != null)
                    ((FileInputStream) Object15).close();
                return null;
            } finally {
                if (ObjectInputStream5 != null)
                    ObjectInputStream5.close();
                if (Object6 != null)
                    ((FileInputStream) Object6).close();
                throw Object4;
            }
            try {
                ObjectInputStream5.close();
            } catch (Exception Exception21) {
            }
            if (Object6 != null) {
                try {
                    ((FileInputStream) Object6).close();
                } catch (Exception Exception22) {
                    return Serializable20;
                }
                return Serializable20;
            }
        }
        return Serializable20;
    }

    public final BookInfo c() {
        return d;
    }

    public final void c(String String1) {
        f = String1;
    }

    public final int d() {
        return e;
    }

    public final Map e() {
        if (h == null)
            h = (Map) new HashMap();
        return h;
    }

    public final List f() {
        if (g == null)
            g = (List) new ArrayList();
        return g;
    }

    public final String g() {
        return f;
    }

    public final List h() {
        if (i == null)
            i = (List) new ArrayList();
        return i;
    }

    public final List i() {
        if (j == null)
            j = (List) new ArrayList();
        return j;
    }

    public final List j() {
        if (k == null)
            k = (List) new ArrayList();
        return k;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onCreate() {
    }
}
