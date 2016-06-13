package com.clilystudio.netbook.api;

import com.google.gson.JsonParseException;

import java.io.IOException;

class ApiService$JsonException
        extends IOException {
    private static final long serialVersionUID = -8247637549733902252L;

    public ApiService$JsonException(JsonParseException jsonParseException) {
        super(jsonParseException.getMessage());
        this.initCause(jsonParseException);
    }
}
