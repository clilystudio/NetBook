/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.v;

public final class k
implements v<Number> {
    @Override
    public final /* synthetic */ Object a(float f, Object object, Object object2) {
        Number number = (Number)object;
        Number number2 = (Number)object2;
        float f2 = number.floatValue();
        return Float.valueOf(f2 + f * (number2.floatValue() - f2));
    }
}
