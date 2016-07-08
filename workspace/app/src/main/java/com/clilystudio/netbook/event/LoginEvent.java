package com.clilystudio.netbook.event;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

public final class LoginEvent {
    private final Account mAccount;
    private AuthLoginActivity.Source mSource;

    public LoginEvent(Account account) {
        this.mAccount = account;
    }

    public final Account getAccount() {
        return this.mAccount;
    }

    public final void setSource(AuthLoginActivity.Source source) {
        this.mSource = source;
    }

    public final AuthLoginActivity.Source getSource() {
        return this.mSource;
    }
}
