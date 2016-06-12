package com.clilystudio.netbook.util;

import android.content.Context;

public final class E {

    private float a;
    private float b;
    private float c;
    public E(Context Context1, float float2, float float3) {
        Context1.getResources().getDimension(2131099903);
        c = Context1.getResources().getDimension(2131099904);
        a = float2;
        b = float3;
    }

    public final F a() {
        float float1 = a - b;
        int int2 = (int) (float1 / (b + c));

        while (int2 > 0) {
            float float3 = float1 / (float) int2 - b;

            if (float3 >= c)
                return new F(int2 + 1, float3);
            else
                --int2;
        }
        return new F(1, 0.0F);
    }
}
