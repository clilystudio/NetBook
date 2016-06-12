package com.clilystudio.netbook;

import android.content.Context;
import android.content.Intent;

import java.io.Serializable;

public final class d {

    private final Intent a = new Intent();

    public final Intent a() {
        return a;
    }

    public final d a(Context Context1, Class Class2) {
        a.setClass(Context1, Class2);
        return this;
    }

    public final d a(String String1, int int2) {
        a.putExtra(String1, int2);
        return this;
    }

    public final d a(String String1, Serializable Serializable2) {
        a.putExtra(String1, Serializable2);
        return this;
    }

    public final d a(String String1, String String2) {
        a.putExtra(String1, String2);
        return this;
    }

    public final d a(String String1, String[] String_1darray2) {
        a.putExtra(String1, String_1darray2);
        return this;
    }
}
