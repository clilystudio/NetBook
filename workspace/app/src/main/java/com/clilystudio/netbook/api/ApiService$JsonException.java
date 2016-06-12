
package com.clilystudio.netbook.api;

import com.google.gson.JsonParseException;
import java.io.IOException;

class ApiService$JsonException extends IOException {

    public ApiService$JsonException(JsonParseException JsonParseException1)
    {
        super( JsonParseException1.getMessage() );
        initCause( (Throwable) JsonParseException1 );
    }

    private static final long serialVersionUID = -8247637549733902252L;
}
