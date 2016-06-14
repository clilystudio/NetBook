package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.Root;

public abstract class R_Clazz extends S<RelateBookRoot> {
    @Override
    protected final /* synthetic */ RelateBookRoot a(ApiService apiService, String[] arrstring) {
        return apiService.X(arrstring[0]);
    }
}
