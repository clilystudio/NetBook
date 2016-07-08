package com.clilystudio.netbook.widget.comca;

public final class k implements v<Number> {
    @Override
    public final /* synthetic */ Number a(float f, Number object, Number object2) {
        Number number = (Number) object;
        Number number2 = (Number) object2;
        float f2 = number.floatValue();
        return Float.valueOf(f2 + f * (number2.floatValue() - f2));
    }
}
