/*
 * Decompiled with CFR 0_115.
 */
package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.v;

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
