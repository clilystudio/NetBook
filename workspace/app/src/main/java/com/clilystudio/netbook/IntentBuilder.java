package com.clilystudio.netbook;

import android.content.Context;
import android.content.Intent;

import java.io.Serializable;

public final class IntentBuilder {
    private final Intent mIntent = new Intent();

    public final Intent build() {
        return this.mIntent;
    }

    public final IntentBuilder put(Context context, Class<?> cls) {
        this.mIntent.setClass(context, cls);
        return this;
    }

    public final IntentBuilder put(String name, int value) {
        this.mIntent.putExtra(name, value);
        return this;
    }

    public final IntentBuilder putSerializable(String name, Serializable value) {
        this.mIntent.putExtra(name, value);
        return this;
    }

    public final IntentBuilder put(String name, String value) {
        this.mIntent.putExtra(name, value);
        return this;
    }

    public final IntentBuilder put(String name, String[] value) {
        this.mIntent.putExtra(name, value);
        return this;
    }
}
