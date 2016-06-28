/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.w;
import java.util.ArrayList;

final class y
extends ThreadLocal<ArrayList<w>> {
    y() {
    }

    @Override
    protected final /* synthetic */ Object initialValue() {
        return new ArrayList();
    }
}
