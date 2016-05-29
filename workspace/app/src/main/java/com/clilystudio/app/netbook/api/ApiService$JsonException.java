package com.clilystudio.app.netbook.api;

import com.google.gson.JsonParseException;

import java.io.IOException;

class ApiService$JsonException extends IOException {
    private static final long serialVersionUID = -8247637549733902252L;

    public ApiService$JsonException(JsonParseException paramJsonParseException) {
        super(paramJsonParseException.getMessage());
        initCause(paramJsonParseException);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.api.ApiService.JsonException
 * JD-Core Version:    0.6.2
 */