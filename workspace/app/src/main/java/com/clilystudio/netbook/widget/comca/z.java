/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.w;
import java.util.ArrayList;

final class z
extends ThreadLocal<ArrayList<w>> {
    z() {
    }

    @Override
    protected final /* synthetic */ Object initialValue() {
        return new ArrayList();
    }
}
