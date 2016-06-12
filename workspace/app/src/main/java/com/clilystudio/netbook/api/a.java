
package com.clilystudio.netbook.api;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;

final class a implements JsonDeserializer {

    public final Object deserialize(JsonElement JsonElement1, reflect.Type Type2, JsonDeserializationContext JsonDeserializationContext3)
    {
        String String4 = JsonElement1.getAsString().replace( (CharSequence) "Z", (CharSequence) "+0000" );

        return new SimpleDateFormat( "yyyy-MM-dd'T'HH:mm:ss.SSSZ" ).parse( String4, new ParsePosition( 0 ) );
    }
}
