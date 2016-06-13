package com.clilystudio.netbook;

import android.content.Context;
import android.content.Intent;

import java.io.Serializable;

public final class d {
    private final Intent a = new Intent();

    public final Intent a() {
        return this.a;
    }

    public final d a(Context context, Class<?> class_) {
        this.a.setClass(context, class_);
        return this;
    }

    public final d a(String string, int n) {
        this.a.putExtra(string, n);
        return this;
    }

    public final d a(String string, Serializable serializable) {
        this.a.putExtra(string, serializable);
        return this;
    }

    public final d a(String string, String string2) {
        this.a.putExtra(string, string2);
        return this;
    }

    public final d a(String string, String[] arrstring) {
        this.a.putExtra(string, arrstring);
        return this;
    }
}
