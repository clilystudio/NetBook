package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.UGCBookListRoot.UGCBook;
import com.clilystudio.netbook.util.W;

public final class X extends W<UGCBookListRoot.UGCBook> {
    private String a = "共%1$d本书  |  %2$d人收藏";
    private String b = "共%1$d本书";

    public X(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903317);
    }

    protected final int[] a() {
        return new int[]{2131493604, 2131492936, 2131493239, 2131493317, 2131493481, 2131493783, 2131493785, 2131493786};
    }
}
