package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public final class t {
    private final Account a;
    private AuthLoginActivity.Source b;

    public t(Account account) {
        this.a = account;
    }

    public final Account a() {
        return this.a;
    }

    public final void a(AuthLoginActivity.Source source) {
        this.b = source;
    }

    public final AuthLoginActivity.Source b() {
        return this.b;
    }
}
